# Oneonwonder

Being a new manager is hard. Not only do you not want to mess things up for yourself, but now you have other people depending on you to mentor and lead them.

Oneonwonder is a dashboard that helps you organize information about your team, plan their one-on-ones, and get advice from seasoned managers.

- https://coderwall.com/p/f5mdoq/using-belongs_to-with-scaffold-generator-to-quickly-create-associations
- https://philipwalton.github.io/solved-by-flexbox/demos/grids/
- https://github.com/norman/friendly_id/
- https://github.com/excid3/simple_calendar
- https://github.com/scambra/devise_invitable
- https://www.zenefits.com/workest/how-to-set-goals-with-your-direct-reports/

To Do
- Need to change controller for logging in

## Goals

Goals have three parts, each related to a specific area of employee growth:
a) The tactical, things related to work (like creating a process or meeting a business goal)
b) Personal development, like learning a new skill

Colleague
  has_many Goals

Goal
  belongs_to Colleague
  has_one User
  goal_type:string
  goal_title:string
  goal_description:text
  goal_complete:boolean
