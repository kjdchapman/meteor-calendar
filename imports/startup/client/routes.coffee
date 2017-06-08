import { FlowRouter } from 'meteor/kadira:flow-router'
import { BlazeLayout } from 'meteor/kadira:blaze-layout'

import '../../ui/layouts/body/body.coffee'
import '../../ui/pages/home/home.coffee'
import '../../ui/pages/professional/start/start.coffee'
import '../../ui/pages/professional/select/select.coffee'
import '../../ui/pages/not-found/not-found.coffee'
import '../../ui/components/availability-selector/availabilitySelector.coffee'
import '../../ui/components/calendar-selector/calendarSelector.coffee'
import '../../ui/components/mentor-profile/mentorProfile.coffee'
import '../../ui/components/mentor-selector/mentorSelector.coffee'
import '../../ui/components/nav-bar/navBar.coffee'
import '../../ui/components/time-selector/timeSelector.coffee'
import '../../ui/components/time-zone-selector/timeZoneSelector.coffee'

FlowRouter.route '/',
  name: 'App.home'
  action: ->
    BlazeLayout.render 'App_body', main: 'App_home'

# TODO: work out how to nest routes
FlowRouter.route '/professional/start',
  name: 'professionalStart'
  action: ->
    BlazeLayout.render 'App_body', main: "start",

FlowRouter.route '/professional/select',
  name: 'professionalSelect'
  action: ->
    BlazeLayout.render 'App_body', main: "select",

FlowRouter.notFound = action: ->
    BlazeLayout.render 'App_body', main: 'App_notFound'
