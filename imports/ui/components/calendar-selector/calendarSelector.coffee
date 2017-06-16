import './calendarSelector.tpl.jade'

import { Template } from 'meteor/templating'
import { ReactiveDict } from 'meteor/reactive-dict';

Template.calendarSelector.helpers
  days: ->
    # TODO: needs to cover the case where slots aren't loaded yet
    data = Template.instance().data
    [earliest, ..., latest] = data.slots
      .map (s) -> moment(s.dateTime)
      .sort (a,b) -> a - b

    start_date = earliest.startOf("month")
    end_date = latest.endOf("month")
    days = moment.range(start_date, end_date).toArray("day")
    console.log days
    days

  dayAttributes: ->
    if @selected
      { class: "day selected" }
    else if @available
      { class: "day available" }
    else
      { class: "day" }

Template.calendarSelector.events
  'click .day': (event) ->
    # TODO: implement with new collection
    # availability = Template.instance().data.days.get()
    # availability.select_day(@day)
    # Template.instance().data.days.set availability
    # Template.instance().data.selectedDay.set @day
