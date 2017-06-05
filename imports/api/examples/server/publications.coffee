import { Meteor } from 'meteor/meteor'
import { Examples } from '../examples'

Meteor.publish 'examples.all', ->
  do Examples.find
