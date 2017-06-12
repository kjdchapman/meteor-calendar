import './timeSelector.tpl.jade'

Template.timeSelector.helpers
  selectedDay: ->
    @selectedDay.get()
