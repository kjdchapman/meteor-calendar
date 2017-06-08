import './mentorSelector.tpl.jade'

Template.mentorSelector.helpers
  optionAttributes: ->
    selectedMentor = Template.instance().data.selectedMentor.get()
    { selected: true } if @_id == selectedMentor

