import { Meteor } from 'meteor/meteor'
import { Slots } from '../slots'

Meteor.publish 'slots.available', ->
  Slots.find { available: true }
