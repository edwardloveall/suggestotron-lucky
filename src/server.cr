require "./app"

host = ENV["HOST"]? || "127.0.0.1"
port = if Lucky::Env.production?
  ENV["PORT"]
else
  8080
end
server = HTTP::Server.new(host, port.to_i, [
  LuckyWeb::HttpMethodOverrideHandler.new,
  LuckyWeb::LogHandler.new,
  LuckyWeb::SessionHandler.new,
  LuckyWeb::Flash::Handler.new,
  LuckyWeb::ErrorHandler.new(action: Errors::Show),
  LuckyWeb::RouteHandler.new,
  LuckyWeb::StaticFileHandler.new("./public", false),
])

puts "Listening on http://#{host}:#{port}..."

server.listen
