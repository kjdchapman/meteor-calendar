import './timeZoneSelector.tpl.jade'

import { Template } from 'meteor/templating'

Template.timeZoneSelector.helpers
  timeZones: ->
    # TODO: use moment/timezones for this
    [
      {
        zoneName: "London/England"
        from_UTC: 0
      }
      {
        zoneName: "Japan/Tokyo"
        from_UTC: 8
      }
      {
        zoneName: "America/New York"
        from_UTC: -5
      }
    ]


  optionAttributes: ->
    # TODO: preselect time zones from elsewhere if needed here
