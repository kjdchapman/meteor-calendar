import './mentorSelector.tpl.jade'

import { Template } from 'meteor/templating'

Template.mentorSelector.helpers
  optionAttributes: ->
    selectedMentor = Template.instance().data.selectedMentor.get()
    { selected: true } if @_id == selectedMentor

