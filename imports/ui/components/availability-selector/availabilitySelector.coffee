import './availabilitySelector.tpl.jade'
import { Slots } from '../../../api/slots/slots'

import { Template } from 'meteor/templating'

Template.availabilitySelector.onCreated ->
  @data.selectedDay = new ReactiveVar
  @data.selectedTimeZone = new ReactiveVar(do moment.tz.guess)
  @subscribe 'slots.available'
  console.log Slots.find().count()

Template.availabilitySelector.helpers
  confirmAttributes: ->
    if @selectedDay.get()
      {
        type: "button"
        value: "Confirm and enter details"
      }
    else
      {
        type: "button"
        value: "Select a day"
      }
