module "User views a Team",
  setup: ->
    console.log "setting up"
    Ember.run App, App.advanceReadiness

    team = App.Team.createRecord({id: 1, name: "Best Team Ever"})

    user = App.User.createRecord({
      firstName: "Eric"
      lastName: "Kelly"
    })

    teamMembership = team.get('team_memberships').createRecord({
      team: team,
      user: user
    })

    team.get('users').pushObject(user)

  teardown: ->
    console.log "tearing down"
    App.reset()

test "the team name is displayed", ->
  expect 1

  visit("/teams/1").then ->
    ok exists('*:contains(Best Team Ever)'), 'Found Team name'

test "the team members are displayed", ->
  expect 1

  visit("/teams/1").then ->
    equal(find(".team-members li:eq(0)").text(), "Eric Kelly",
      "Found first team member's name");
