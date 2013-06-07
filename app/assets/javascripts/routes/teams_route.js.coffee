CornholeKeeper.TeamsIndexRoute = Ember.Route.extend
  model: -> CornholeKeeper.Team.find()

CornholeKeeper.TeamsNewRoute = Ember.Route.extend
  model: -> CornholeKeeper.Team.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
    # controller.set('userChoices', CornholeKeeper.User.find())
