import { Meteor } from 'meteor/meteor'
import { Slots } from '../../api/slots/methods'

Meteor.startup ->
  tomorrow = moment().add(1, 'd')
  next_week = moment().add(1, 'w')
  next_month = moment().add(1, 'M')

  Meteor.call 'slots.insert',
    dateTime: tomorrow.toJSON()
    mentor: { id: 1, name: "Alice" }
    available: true

  Meteor.call 'slots.insert',
    dateTime: next_week.toJSON()
    mentor: { id: 1, name: "Alice" }
    available: true

  Meteor.call 'slots.insert',
    dateTime: next_week.toJSON()
    mentor: { id: 2, name: "Charlie" }
    available: true

  Meteor.call 'slots.insert',
    dateTime: tomorrow.toJSON()
    mentor: { id: 1, name: "Alice" }
    professional: { id: 2, name: "Bob" }
    available: false
