import { FlowRouter } from 'meteor/kadira:flow-router'
import { BlazeLayout } from 'meteor/kadira:blaze-layout'

import '../../ui/layouts/body/body.coffee'
import '../../ui/pages/home/home.coffee'
import '../../ui/pages/not-found/not-found.coffee'

FlowRouter.route '/',
  name: 'App.home'
  action: ->
    BlazeLayout.render 'App_body', main: 'App_home'

FlowRouter.notFound = action: ->
    BlazeLayout.render 'App_body', main: 'App_notFound'
