import './calendarSelector.tpl.jade'

import { Template } from 'meteor/templating'
import { ReactiveDict } from 'meteor/reactive-dict';

class Availability
  @days

  constructor: (availability) ->
    @days = []
    availability.sort (a, b) ->
      a - b;

    earliest_date = _.first availability
    latest_date = _.last availability

    start_date = earliest_date.clone().startOf("month")
    end_date = latest_date.clone().endOf("month")
    range = moment.range(start_date, end_date)

    for day in range.toArray("day")
      matching_days = _.filter availability, (avail) ->
        day.isSame(avail, "day")
      day.available = true if matching_days.length isnt 0
      @days.push day

  formatted_days: ->
    result = _.map @days, (day) ->
      {
        day: day
        display: day.format("ddd Do MMM YY")
        selected: day.selected
        available: day.available
      }

  select_day: (selected) ->
    _.each @days, (day) ->
      day.selected = day is selected

Template.calendarSelector.onCreated ->
  @data.days = new ReactiveVar
  availability = [
    moment.tz("2017-05-05T09", "Etc/UTC")
    moment.tz("2017-06-16T08", "Etc/UTC")
    moment.tz("2017-06-15T15", "Etc/UTC")
  ]
  @data.days.set new Availability availability

Template.calendarSelector.helpers
  days: ->
    @days.get().formatted_days()

  dayAttributes: ->
    if @selected
      { class: "day selected" }
    else if @available
      { class: "day available" }
    else
      { class: "day" }

Template.calendarSelector.events
  'click .day': (event) ->
    availability = Template.instance().data.days.get()
    availability.select_day(@day)
    Template.instance().data.days.set availability
    Template.instance().data.selectedDay.set @day
