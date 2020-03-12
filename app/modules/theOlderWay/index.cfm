<html>
  This is theOlderWay module

  <script>
    var muraAPIEndpoint = `/index.cfm/_api/json/v1/default/?method=`;

    Mura.get(muraAPIEndpoint + "theOlderGetMethod")
    .then(response => {
      console.log("Response from theOlderGetMethod")
      console.log(response)
    });

    const myData = {
      name: "Luke",
      height: 185,
      favoriteColor: "red"
    };

    console.log("trying to send the following data");
    console.log(myData);

    Mura.post(muraAPIEndpoint + "theOlderPostMethod", {
      headers: {
        "content-type": "application/json",
      },
      content: JSON.stringify(myData),
    })
    .then(response => {
      console.log("Response from theOlderPostMethod");
      console.log(response);
    });
  </script>
</html>