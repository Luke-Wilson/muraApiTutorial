<html>
  This is myTestModule

  <script>
    Mura.getEntity('testservice').invoke('testGetMethod')
    .then(response => {
      console.log("Response from testGetMethod")
      console.log(response)
    });

    const myData = {
      name: "Luke",
      height: 185,
      favoriteColor: "red"
    };

    console.log("trying to send the following data");
    console.log(myData);

    Mura.getEntity('testservice').invoke('testPostMethod', {"data": myData}, "post")
    .then(response => {
      console.log("Response from testPostMethod");
      console.log(response);
    });
  </script>
</html>