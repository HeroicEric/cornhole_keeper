App.UsersIndexRoute = Ember.Route.extend
  model: -> App.User.find()

App.UsersNewRoute = App.UsersIndexRoute.extend
  model: ->
    App.User.createRecord()
  setupController: (controller, model) ->
    controller.set('content', model)
