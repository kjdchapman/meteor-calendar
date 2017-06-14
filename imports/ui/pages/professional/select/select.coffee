import './select.tpl.jade'

import { Template } from 'meteor/templating'

getAvailability = ->
  [
    moment.tz("2017-05-05T09", "Etc/UTC")
    moment.tz("2017-06-16T08", "Etc/UTC")
    moment.tz("2017-06-15T15", "Etc/UTC")
  ]

Template.select.onCreated ->
  mentorId = parseInt(FlowRouter.getQueryParam "mentorId")
  selectedMentor = new ReactiveVar
  selectedMentor.set mentorId if mentorId
  @data.selectedMentor = selectedMentor
  @data.availability = new ReactiveVar getAvailability()

Template.select.helpers
  mentors: ->
    [
      {
        _id: 1
        name: "Biel Parklee"
        role: "W Magazine editor"
        bio: "Orem ipsum dolI don't or sit amet, consectetur adipiscing elit"
      }
      {
        _id: 2
        name: "Sophie Li"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
      {
        _id: 3
        name: "Megan McClusky"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
    ]
