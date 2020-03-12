component extends="mura.bean.bean" displayname="testservice" entityname="testservice" hint="My test service" {

  private struct function setSerializer($){
    return {}
  }

  remote string function testGetMethod() {
    return "This is the returned string"
  }

  remote struct function testPostMethod() {
    var $ = getBean("$")
    var data = $.event('data')
    return {"receivedBody": data}
  }
  
  remote any function search() hint="Return JSON search results" {
      var siteID = 'ap';
      var $ = getBean('$').init(siteID);
      setSerializer($);
      checkAccess($);
      var keyword = $.event('keyword')
      var q = QueryExecute("select * from tcontent where ((Title like :keyword and active=1 and approved=1 and isNav=1) or (Subtype like :keyword and active=1 and approved=1 and isNav=1)) and siteid= :siteID and searchExclude = 0", {siteID:{value: siteID, sqlType: "varchar"}, keyword:{value: "%#keyword#%", sqlType: "varchar"}});  

      var iterator = $.getBean('contentIterator').setQuery(q);
      var dataArray = [];
      while (iterator.hasNext()) {
          var resultItem = iterator.next();
          arrayAppend(dataArray, packageItem($, resultItem, true));
      }
      return {items: dataArray};
  }

}