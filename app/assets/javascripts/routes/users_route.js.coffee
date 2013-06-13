CornholeKeeper.UsersIndexRoute = Ember.Route.extend
  model: -> CornholeKeeper.User.find()

CornholeKeeper.UsersNewRoute = CornholeKeeper.UsersIndexRoute.extend
  model: ->
    CornholeKeeper.User.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
