import './mentorSelector.tpl.jade'

import { Template } from 'meteor/templating'

Template.mentorSelector.helpers
  optionAttributes: ->
    data = Template.instance().data
    selectedMentor = data.selectedMentor.get()
    if selectedMentor is @_id
      { id: @_id, selected: true }
    else
      { id: @_id }

Template.mentorSelector.events
  'change #mentorSelect': (event) ->
    newValue = parseInt(event.target.selectedOptions[0].id) || null
    @selectedMentor.set newValue

