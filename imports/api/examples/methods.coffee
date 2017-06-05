import { Meteor } from 'meteor/meteor'
import { check } from 'meteor/check'
import { Examples } from './examples'

Meteor.methods
  'examples.insert': (title, url) ->
    check url, String
    check title, String
    Examples.insert { url, title, createdAt: new Date() }
