CornholeKeeper.TeamMembershipsNewRoute = Ember.Route.extend
  model: -> CornholeKeeper.TeamMembership.createRecord()
  setupController: (controller, model) ->
    controller.set('model', model)
