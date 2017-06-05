import { Meteor } from 'meteor/meteor'
import { expect } from 'meteor/practicalmeteor:chai'
import { Examples } from './examples'

if Meteor.isServer
  describe 'examples collection', ->
    it 'inserts correctly', ->
      linkId = Examples.insert
        title: 'meteor homepage',
        url: 'https://www.meteor.com',
      added = Examples.find _id: linkId
      collectionName = do added._getCollectionName
      count = do added.count

      expect(collectionName).to.eq 'examples'
      expect(count).to.eq 1
