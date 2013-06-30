App.TeamsNewController = Ember.ObjectController.extend
  save: ->
    @get('store').commit()
    @transitionToRoute('teams.index')
  cancel: ->
    @content.deleteRecord()
    @transitionToRoute('teams.index')
