component extends="mura.bean.bean" displayname="testservice" entityname="testservice" hint="My test service" {

  remote string function testGetMethod() hint="Demo a GET method" {
    return "This is the returned string";
  }

  remote struct function testPostMethod() hint="Demo a post method" {
    var $ = getBean("$").init('default');
    var data = $.event('data');
    return {"receivedBody": data};
  }

}