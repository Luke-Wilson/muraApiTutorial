component extends="mura.cfObject" accessors=true {
  public string function theOlderGetMethod() output='true' {
    return "This is the response from theOlderGetMethod";
  }

  public struct function theOlderPostMethod(data) output='true' {
    return {"receivedBody": data}
  }
}
