import { Meteor } from 'meteor/meteor'
import { check } from 'meteor/check'
import { Match } from 'meteor/check'
import { Slots } from './slots'

Meteor.methods
  'slots.insert': ({ dateTime, mentor, professional, available }) ->
    check dateTime, String
    check mentor, { id: Number, name: String }
    check professional, { id: Match.Maybe(Number), name: Match.Maybe(String) }
    check available, Boolean

    Slots.insert
      dateTime: dateTime
      mentor: mentor
      professional: professional
      available: available
