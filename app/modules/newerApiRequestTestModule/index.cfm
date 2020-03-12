<html>
  This is myTestModule

  <script>
    // TODO: Handle the resolved promise using the .then() block and log the response from the API
    Mura.getEntity('thenewerwayservice').invoke('testGetMethod')
    .then();

    const myData = {
      name: "Luke",
      height: 185,
      favoriteColor: "red"
    };

    console.log("the myData object is the content you are trying to send via your POST request");
    console.log(myData);

    // TODO: Complete the API call using Mura.getEntity
    // HINT: The .invoke() method can accept three arguments:
    // 1) the name of the method you are trying to invoke (string) 
    // 2) the content of the HTTP request (object)
    // 3) the type of HTTP request (e.g. "put", "delete", "post") (string)
    Mura.getEntity(???).invoke(???, ???, ???)
    .then(response => {
      console.log("Response from testPostMethod");
      console.log(response);
    });
  </script>
</html>