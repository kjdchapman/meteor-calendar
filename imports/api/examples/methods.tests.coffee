import { Meteor } from 'meteor/meteor'
import { expect } from 'meteor/practicalmeteor:chai'
import { Examples } from './examples'
import './methods'

if Meteor.isServer
  describe 'examples methods', ->
    beforeEach ->
      Examples.remove {}

    it 'can add a new example', ->
      addExample = Meteor.server.method_handlers['examples.insert']

      addExample.apply {}, ['meteor.com', 'https://www.meteor.com']

      expect(do Examples.find().count).to.eq 1

