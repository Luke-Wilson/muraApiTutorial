component extends="mura.cfObject" {
  public any function onApplicationLoad(required struct $) {
    var APIUtility = getBean('settingsManager').getSite('default').getApi('json','v1');

    APIUtility.registerMethod('theOlderGetMethod', this.theOlderGetMethodAPIEntry);
    APIUtility.registerMethod('theOlderPostMethod', this.theOlderPostMethodAPIEntry);

    return this;
  }

  public any function theOlderGetMethodAPIEntry() output='true' {
		var $ = getBean('$').init('default');
    var theOlderWayService = $.getBean('theOlderWayService');
    return theOlderWayService.theOlderGetMethod();
  }

  public any function theOlderPostMethodAPIEntry() output='true' {
		var $ = getBean('$').init('default');
		var theOlderWayService = $.getBean('theOlderWayService');
		var data = DeserializeJSON($.event('data'));
		return theOlderWayService.theOlderPostMethod(data);
	}

}
