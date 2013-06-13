# Load sinon from vendor/assets/javascripts
#= require sinon

# Load all testing support files
#= require_tree ./support

#= require application

# Prevent the router from manipulating the browser's URL.
CornholeKeeper.Router.reopen location: 'none'

# **** Utility methods (for tests only - not for use in apps) ***

window.TestUtil ||=
  fakeServer: ->
      sinon.fakeServer.create()
  lookupStore: ->
    CornholeKeeper.__container__.lookup 'store:main'

  lookupRouter: ->
    CornholeKeeper.__container__.lookup 'router:main'

  appendView: ->
    Ember.run( ->
      view.append '#konacha'
    )

# Useful for placing local test vars
window.Test ||= {}
# Shorthand
window.T = Test

# **** Global before / after ***

# Sinon fake server

# Stub out Konacha.reset()
Konacha.reset = Ember.K

beforeEach( (done) ->
  # Fake XHR
  window.server = TestUtil.fakeServer()

  # Prevent automatic scheduling of runloops. For tests, we
  # want to have complete control of runloops.
  Ember.testing = true

  # reset all test variables!
  window.Test = {}

  Ember.run( ->
    # Advance App readiness, which was deferred when the app
    # was created.

    # This needs to be done here, after each iframe has been setup,
    # instead of in a global `before`.
    CornholeKeeper.advanceReadiness()

    # When App readiness promise resolves, setup is complete
    CornholeKeeper.then( ->
      done()
    )
  )
)

afterEach( ->
  # Reset App
  Ember.run( ->
    CornholeKeeper.reset()
  )

  # reset all test variables!
  window.Test = {}

  # Restore XHR
  window.server.restore()
)
