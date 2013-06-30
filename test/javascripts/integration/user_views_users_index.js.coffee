module "User views Users index",
  setup: ->
    console.log "setting up"
    Ember.run App, App.advanceReadiness

    App.User.createRecord({
      firstName: "Eric",
      lastName: "Kelly"
    })

    App.User.createRecord({
      firstName: "Ronald",
      lastName: "McDonald"
    })

  teardown: ->
    console.log "tearing down"
    App.reset()

test "All of the Users are listed", ->
  expect 3

  visit("/users").then ->
    ok exists('*:contains(Eric Kelly)'), 'Found first user'
    ok exists('*:contains(Ronald McDonald)'), 'Found second user'
    equal find(".user-list li").length, 2, "Retrieved correct number of Users"
