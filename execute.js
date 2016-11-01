var http = require('http');

//Lets define a port we want to listen to
const PORT=8080; 

//We need a function which handles requests and send response
function handleRequest(request, response){
    //response.end('It Works!! Path Hit: ' + request.url);
    response.end("<a href=\"blink\">Blink the lights!</a>")
    if(request.url=="/blink"){
        const exec = require('child_process').exec;
        exec('sh NFCblinker.sh' ,function(err,stdout,stderr){
             console.log(err,stdout,stderr);
        })
    } 
}

//Create a server
var server = http.createServer(handleRequest);

//Lets start our server
server.listen(PORT, function(){
    //Callback triggered when server is successfully listening. Hurray!
    console.log("Server listening on: http://localhost:%s", PORT);
});

/*const exec = require('child_process').exec;
exec('sh NFCblinker.sh' ,function(err,stdout,stderr){
      console.log(err,stdout,stderr);
 })*/	
