App.TeamsIndexRoute = Ember.Route.extend
  model: -> App.Team.find()

App.TeamRoute = Ember.Route.extend
  model: (params) -> App.Team.find(params.team_id)

App.TeamsNewRoute = Ember.Route.extend
  model: -> App.Team.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
