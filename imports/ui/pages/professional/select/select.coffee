import './select.tpl.jade'

import { Template } from 'meteor/templating'

Template.select.onCreated ->
  mentorId = parseInt(FlowRouter.getQueryParam "mentorId")
  selectedMentor = new ReactiveVar
  selectedMentor.set mentorId if mentorId
  @data.selectedMentor = selectedMentor

Template.select.helpers
  mentors: ->
    [
      {
        _id: 1
        name: "Biel Parklee"
        role: "W Magazine editor"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
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
