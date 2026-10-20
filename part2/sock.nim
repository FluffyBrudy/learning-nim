import std/[net, strutils, json, times]
import req


const HOST = "jsonplaceholder.typicode.com"



let socket = newSocket()
socket.connect("jsonplaceholder.typicode.com", Port(80))

let start_time = now()
# socket.send("GET /todos/1 HTTP/1.1\r\nHost: jsonplaceholder.typicode.com\r\nAccept: application/json\r\nConnection: close\r\n\r\n")
socket.send(build_request(HOST, "/todos", Method.POST, body="{\"title\":\"My Todo\",\"userId\":1}"))

var response = ""
while true:
  let chunk = socket.recv(1024)
  echo type chunk
  if chunk.len == 0: break
  response.add(chunk)
let end_time = now()
echo(end_time - start_time)
socket.close()
echo response
let body = response.split("\r\n\r\n", 1)[1]
echo response
let j = parseJson(body)
echo j["id"], type j["id"].getInt()
