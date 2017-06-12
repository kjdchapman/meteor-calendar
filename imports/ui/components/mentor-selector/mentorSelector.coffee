import './mentorSelector.tpl.jade'

import { Template } from 'meteor/templating'

Template.mentorSelector.helpers
  optionAttributes: ->
    selectedMentor = Template.instance().data.selectedMentor.get()
    if selectedMentor is @_id
      { id: @_id, selected: true }
    else
      { id: @_id }

Template.mentorSelector.events
  'change #mentorSelect': (event) ->
     @selectedMentor.set event.target.selectedOptions[0].id

