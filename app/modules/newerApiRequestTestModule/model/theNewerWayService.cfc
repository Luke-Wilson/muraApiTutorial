
// TODO: Fill in the entityname values on the line below
component extends="mura.bean.bean" displayname="thenewerwayservice" entityname="thenewerwayservice" hint="This is the newer way service" {

  // TODO: Complete this method. Return any old string.
  remote string function testGetMethod() hint="Demo a GET method" {
    return "this is the response from testGetMethod";
  }
  
  // TODO: Complete this method
  // You need to retTurn a struct that contains the data that the front end sent via the POST request.
  remote struct function testPostMethod() hint="Demo a post method" {
    // Here we initialize the Mura scope with the "default" siteid.
    var $ = getBean("$").init('default');
    // Hint: Checkout Mura's event scope by doing writeDump($.event());abort;

    var myData = $.event('data');
    return {
      "bodyContent": myData
    };

  }

}