require("coffee-script")
net = require("net")

source_port = 25
dest_port = 2525

server = net.createServer (clientConnection) ->
  buff = ""
  serverConnection = net.createConnection
    host: "burcham.dyksen.net"
    port: dest_port

  serverConnection.pipe clientConnection
  clientConnection.pipe serverConnection

server.listen(source_port)
