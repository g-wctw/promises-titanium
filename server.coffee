express = require("express")
app = express()

app.get "/good_json", (req, res) ->
  console.log "[INFO]  [Server] Request for /good_json, responding with 200"
  res.json message: "It Works!"

app.get "/login/:name", (req, res) ->
  console.log "[INFO]  [Server] Request for /login/#{req.params.name}, responding with 200"
  res.json message: "Hello #{req.params.name}, How are you?"

app.get "/bad_json", (req, res) ->
  console.log "[INFO]  [Server] Request for /bad_json, responding with 200 ('Bad JSON')"
  res.send 200, "Bad JSON"

app.get "/not_found", (req, res) ->
  console.log "[INFO]  [Server] Request for /not_found, responding with 404"
  res.send 404

app.listen 3000

console.log "Server started at http://localhost:3000/"
