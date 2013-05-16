CornholeKeeper.UsersRoute = Ember.Route.extend
  model: -> CornholeKeeper.User.find()
