// Generated by CoffeeScript 1.3.3

/*
    Main node app for apiHack
    node apiHack
*/


(function() {
  var http, srvr;

  http = require("http");

  srvr = http.createServer(function(req, res) {
    res.writeHead(200, {
      "Content-Type": "text/plain"
    });
    return res.end("Hello World\n");
  });

  srvr.listen(8080, "127.0.0.1");

  console.log("Server running at http://127.0.0.1:8080/");

}).call(this);