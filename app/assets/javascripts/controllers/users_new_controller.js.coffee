CornholeKeeper.UsersNewController = Ember.ObjectController.extend
  save: ->
    @get('store').commit()
    @transitionToRoute('users.index')
  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('users.index')
