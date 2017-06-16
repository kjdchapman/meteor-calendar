import './select.tpl.jade'
# import { Slots } from '../../../../api/slots/slots'

import { Template } from 'meteor/templating'

# Template.select.onCreated ->
  # @subscribe 'slots.available'
  # mentorId = parseInt(FlowRouter.getQueryParam "mentorId")
  # selectedMentor = new ReactiveVar
  # if mentorId
  #   selectedMentor.set mentorId
  #   # TODO: suspect needs more checking against nosql injection
  #   params = { "mentor": { "id": selectedMentor }}
  # else
  #   params = {}

  # @data.slots = Slots.find params
  # @data.selectedMentor = selectedMentor

# Template.select.helpers
#   mentors: ->
#     [
#       {
#         _id: 1
#         name: "Alice"
#         role: "Famous person"
#         bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
#       }
#       {
#         _id: 2
#         name: "Charlie"
#         role: "Famous person"
#         bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
#       }
#       {
#         _id: 3
#         name: "Danielle"
#         role: "Famous person"
#         bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
#       }
#     ]
