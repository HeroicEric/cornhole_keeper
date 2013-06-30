module "User views Teams index",
  setup: ->
    console.log "setting up"
    Ember.run App, App.advanceReadiness

    App.Team.createRecord({name: "Best Team Ever"})
    App.Team.createRecord({name: "Worst Team Ever"})

  teardown: ->
    console.log "tearing down"
    App.reset()

test "All of the Teams are listed", ->
  expect 3

  visit("/teams").then ->
    ok exists('*:contains(Best Team Ever)'), 'Found first team'
    ok exists('*:contains(Worst Team Ever)'), 'Found second team'
    equal find(".team-list li").length, 2, "Retrieved correct number of teams"
