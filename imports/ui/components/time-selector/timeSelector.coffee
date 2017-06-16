import './timeSelector.tpl.jade'

Template.timeSelector.helpers
  selectedDay: ->
    @selectedDay.get()

  timeZone: ->
    @selectedTimeZone.get()

  slots: ->
    console.log "slots in time selector"
    console.log @slots

