import { expect } from 'meteor/practicalmeteor:chai'
import { Examples } from '../examples'
import { PublicationCollector } from 'meteor/johanbrook:publication-collector'
import './publications'

describe 'examples publications', ->
  beforeEach ->
    Examples.remove {}
    Examples.insert
      title: 'meteor homepage',
      url: 'https://www.meteor.com'

  describe 'examples.all', ->
    it 'sends all examples', ->
      collector = new PublicationCollector()
      collector.collect 'examples.all', (collections) ->
        expect(collections.examples.length).to.equal 1
        # do done # is this necessary?
