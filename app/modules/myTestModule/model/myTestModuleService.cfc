
// TODO: Fill in the entityname values on the line below
component extends="mura.bean.bean" displayname="testservice" entityname="___FILL_ME_IN___" hint="My test service" {

  // TODO: Complete this method. Return any old string.
  remote string function testGetMethod() hint="Demo a GET method" {

  }
  
  // TODO: Complete this method
  // You need to return a struct that contains the data that the front end sent via the POST request.
  remote struct function testPostMethod() hint="Demo a post method" {
    // Here we initialize the Mura scope with the "default" siteid.
    var $ = getBean("$").init('default');
    
    // Hint: Checkout Mura's event scope by doing writeDump($.event());abort;


  }

}