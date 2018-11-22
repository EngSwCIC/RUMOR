# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
# JavaScript to Cucumber site: http://js2.coffee/

$ ->
  $("#compartilhar").click ->
    alert "Link copiado para o Clipboard!"
    copyToClipboard('text_element')
    log()

copyToClipboard = (elementId) ->
  # Create an auxiliary hidden input
  aux = document.createElement('input')
  # Get the text from the element passed into the input
  aux.setAttribute 'value', document.getElementById(elementId).innerHTML
  # Append the aux input to the body
  document.body.appendChild aux
  # Highlight the content
  aux.select()
  # Execute the copy command
  document.execCommand 'copy'
  # Remove the input from the body
  document.body.removeChild aux
  return

log = ->
  console.log '---'
  return

#$.ajax({
#  type: "POST",
#  url: "/cardapio",
#  data: mydata,
#  success: alert "Success!"
#  error: alert "Failure!"
#})

# <div id="compartilhar">
# <form action="/compartilhar/1" class="button_to" data-remote="true" method="post">
#   <input type="submit" value="Compartilhar" />
# </form>
# </div> </br>
