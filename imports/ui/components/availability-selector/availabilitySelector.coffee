import './availabilitySelector.tpl.jade'

Template.availabilitySelector.helpers
  confirmAttributes: ->
    {
      disabled: true
      type: "button"
      value: "Confirm and enter details"
    }
