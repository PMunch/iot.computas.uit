import os
import httpclient

var client = newHttpClient()
client.headers["Authorization"]="Basic YWRtaW46V2VsY29tZXRvQ1gwMQ=="
let params = commandLineParams()
if params[0]!="blink":
  echo client.getContent(url="http://10.0.1.17:8083/ZAutomation/api/v1/devices/ZWayVDev_zway_3-0-37/command/" & params[0])
else:
  echo client.getContent(url="http://10.0.1.17:8083/ZAutomation/api/v1/devices/ZWayVDev_zway_3-0-37/command/on")
  sleep 300
  echo client.getContent(url="http://10.0.1.17:8083/ZAutomation/api/v1/devices/ZWayVDev_zway_3-0-37/command/off")


