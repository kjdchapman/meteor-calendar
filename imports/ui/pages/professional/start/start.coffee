import './start.tpl.jade'

import { Template } from 'meteor/templating'
import { FlowRouter } from 'meteor/kadira:flow-router'

Template.start.helpers
  mentorLinkAttributes: ->
    path = FlowRouter.path 'professionalSelect', null, { mentorId: this._id }
    { href: path }

  mentors: ->
    [
      {
        _id: 1
        name: "Biel Parklee"
        role: "W Magazine editor"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
      {
        _id: 2
        name: "Sophie Li"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
      {
        _id: 3
        name: "Megan McClusky"
        role: "Famous person"
        bio: "Orem ipsum dolor sit amet, consectetur adipiscing elit"
      }
    ]

    # [
    #   {
    #     name: "Biel Parklee"
    #     role: "W Magazine editor"
    #     bio: `Orem ipsum dolor sit amet, consectetur adipiscing elit.
    #       Cras tincidunt fermentum rhoncus. Aliquam rhoncus a nisl et
    #       volutpat. Aliquam volutpat posuere purus, id congue ipsum lobortis
    #       ac. Sed ultrices id sapien in feugiat. Nulla tincidunt feugiat est
    #       sagittis feugiat. Ut pulvinar, est in aliquam mattis, magna enim
    #       mollis nibh, in fermentum mi tortor sit amet neque.`
    #   }
    #   {
    #     name: "Sophie Li"
    #     role: "Famous person"
    #     bio: `Orem ipsum dolor sit amet, consectetur adipiscing elit.
    #       Cras tincidunt fermentum rhoncus. Aliquam rhoncus a nisl et
    #       volutpat. Aliquam volutpat posuere purus, id congue ipsum lobortis
    #       ac. Sed ultrices id sapien in feugiat. Nulla tincidunt feugiat est
    #       sagittis feugiat. Ut pulvinar, est in aliquam mattis, magna enim
    #       mollis nibh, in fermentum mi tortor sit amet neque.`
    #   }
    #   {
    #     name: "Megan McClusky"
    #     role: "Famous person"
    #     bio: `Orem ipsum dolor sit amet, consectetur adipiscing elit.
    #       Cras tincidunt fermentum rhoncus. Aliquam rhoncus a nisl et
    #       volutpat. Aliquam volutpat posuere purus, id congue ipsum lobortis
    #       ac. Sed ultrices id sapien in feugiat. Nulla tincidunt feugiat est
    #       sagittis feugiat. Ut pulvinar, est in aliquam mattis, magna enim
    #       mollis nibh, in fermentum mi tortor sit amet neque.`
    #   }
    # ]
