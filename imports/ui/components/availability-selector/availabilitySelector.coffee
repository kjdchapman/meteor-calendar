import './availabilitySelector.tpl.jade'
import { Slots } from '../../../api/slots/slots'

import { Template } from 'meteor/templating'

Template.availabilitySelector.onCreated ->
  @subscribe 'slots.available'
  @data.selectedDay = new ReactiveVar
  @data.selectedTimeZone = new ReactiveVar(do moment.tz.guess)
  @data.selectedMentor = new ReactiveVar(
    parseInt(FlowRouter.getQueryParam "mentorId") || null
  )

Template.availabilitySelector.helpers
  slots: ->
    selectedMentor = @selectedMentor.get()
    if selectedMentor?
      params = { "mentor.id": selectedMentor }
    else
      params = {}
    @slots = Slots.find params
    @slots

  mentors: ->
    [
      {
        _id: 1
        name: "Alice"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
      {
        _id: 2
        name: "Charlie"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
      {
        _id: 3
        name: "Danielle"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
    ]

