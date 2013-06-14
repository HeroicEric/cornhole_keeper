CornholeKeeper.TeamMembershipsNewController = Ember.ObjectController.extend
  needs: "team",
  selectedUser: null,

  team: (->
    @get('controllers').get('team.model')
  ).property(),

  userChoices: (->
    CornholeKeeper.User.find()
  ).property(),

  addUserToTeam: (user) ->
    @set('selectedUser', user)
    @createTeamMembership()

  createTeamMembership: ->
    team = @get('team')
    user = @get('selectedUser')

    teamMembership = team.get('team_memberships').createRecord({
      team: team,
      user: user
    })

    team.get('users').pushObject(user)
    @get('store').commit()
