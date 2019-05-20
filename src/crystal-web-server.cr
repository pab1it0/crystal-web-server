require "http/server"
require "json"

def generate_response(request)
 json = JSON.build do |json|
 json.object do
   json.field "remote_address", "#{request.remote_address}"
   json.field "method", "#{request.method}"
   json.field "host", "#{request.host}"
   json.field "path", "#{request.path}"
   json.field "headers" do
     json.array do
       request.headers.each do |key, value|
         json.object do
           json.field "#{key}", "#{value}"
         end
       end
     end
   end
   json.field "body", "#{request.body}"
   json.field "query_params", "#{request.query_params}"
   json.field "resource", "#{request.resource}"
   json.field "version", "#{request.query_params}"
 end
end
 return json
end

server = HTTP::Server.new do |context|
 response_json = generate_response(context.request)
 context.response.content_type = "application/json"
 context.response.print "#{response_json}"
end

address = server.bind_tcp "0.0.0.0", 80
puts "Listening on http://#{address}"
server.listen
