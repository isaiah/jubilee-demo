# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

JubileeEventBus = new vertx.EventBus("http://localhost:3215/eventbus")
$ ->
  $("#connect").click ->
    chan = $("#channel").val()
    JubileeEventBus.registerHandler chan, (data) ->
      console.info(data)
      $("#updates").append("<div>#{data}</div>")

  $("#send").click ->
    chan = $("#channel").val()
    text = $("#text").val()
    JubileeEventBus.publish(chan, text)
