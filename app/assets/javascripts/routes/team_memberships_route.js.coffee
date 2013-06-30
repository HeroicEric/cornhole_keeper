App.TeamMembershipsNewRoute = Ember.Route.extend
  model: -> App.TeamMembership.createRecord()
  setupController: (controller, model) ->
    controller.set('model', model)
