import './start.tpl.jade'

import { Template } from 'meteor/templating'
import { FlowRouter } from 'meteor/kadira:flow-router'

Template.start.helpers
  mentorLinkAttributes: ->
    path = FlowRouter.path 'professionalSelect', null, { mentorId: this._id }
    { href: path }

  mentors: ->
    [
      {
        _id: 1
        name: "Alice"
        role: "Famous person"
        bio: "Orem ipsum dolI don't or sit amet, consectetur adipiscing elit"
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
