import './availabilitySelector.tpl.jade'

import { Template } from 'meteor/templating'

# export selectedDay = new ReactiveVar

Template.availabilitySelector.onCreated ->
  @data.selectedDay = new ReactiveVar

Template.availabilitySelector.helpers
  confirmAttributes: ->
    if @selectedDay.get()
      {
        type: "button"
        value: "Confirm and enter details"
      }
    else
      {
        disabled: true
        type: "button"
        value: "Select a day"
      }

Template.availabilitySelector.events
  'click #clickme ': (event) ->
    console.log @
