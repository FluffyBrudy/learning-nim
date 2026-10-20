import std/strformat

type Method* = enum GET, POST, PATCH

proc build_request*(
  host: string, 
  path: string, 
  request_type: Method,
  content_type: string="*/*", 
  accept: string = "*/*",
  connection_type: string="close",
  body: string=""
): string =
  var req_url: string = &"{request_type} {path} HTTP/1.1\r\n" &
                        &"Host: {host}\r\n" &
                        &"Accept: {accept}\r\n" &
                        &"Content-Type: {content_type}\r\n"&
                        &"Connection: {connection_type}\r\n\r\n"
  if request_type == Method.PATCH or request_type == Method.POST:
    req_url.add(body)
  return req_url

