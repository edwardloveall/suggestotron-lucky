require "./app"

host = ENV["HOST"]? || "127.0.0.1"
port = if Lucky::Env.production?
  ENV["PORT"]
else
  8080
end
server = HTTP::Server.new(host, port.to_i, [
  LuckyWeb::HttpMethodOverrideHandler.new,
  HTTP::ErrorHandler.new,
  HTTP::LogHandler.new,
  LuckyWeb::RouteHandler.new,
  HTTP::StaticFileHandler.new("./public", false),
])

puts "Listening on http://#{host}:#{port}..."

server.listen
