require 'vertx'

Vertx::EventBus.register_handler("foo") do |data|
  sh = Vertx::SharedData.get_hash("test")
  sh["test"] = data.body
end
