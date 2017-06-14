import './timeZoneSelector.tpl.jade'

import { Template } from 'meteor/templating'

Template.timeZoneSelector.helpers
  timeZones: ->
    array = moment.tz.names()

  optionAttributes: ->
    selectedTimeZone = Template.instance().data.selectedTimeZone.get()
    option = String(this)
    if option is selectedTimeZone
      { value: option, selected: true }
    else
      { value: option }

Template.timeZoneSelector.events
  'change #zoneSelect': (event) ->
    @selectedTimeZone.set event.target.selectedOptions[0].value

