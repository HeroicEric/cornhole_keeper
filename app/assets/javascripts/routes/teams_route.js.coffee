CornholeKeeper.TeamsIndexRoute = Ember.Route.extend
  model: -> CornholeKeeper.Team.find()

CornholeKeeper.TeamRoute = Ember.Route.extend
  model: (params) -> CornholeKeeper.Team.find(params.team_id)

CornholeKeeper.TeamsNewRoute = Ember.Route.extend
  model: -> CornholeKeeper.Team.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
