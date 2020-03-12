component extends="mura.cfObject" accessors=true {
  public any function init ($) {
    variables.$ = application.serviceFactory.getBean('$').init(session.siteid);
  }
  
  public string function theOlderGetMethod() output='true' {
    return "This is the response from theOlderGetMethod";
  }

  public struct function theOlderPostMethod(data) output='true' {
    return {"receivedBody": data}
  }
}
