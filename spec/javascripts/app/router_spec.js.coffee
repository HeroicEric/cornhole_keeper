#= require spec_helper
#= require router

describe "CornholeKeeper.Router", ->
  it "is an Ember.Router", ->
    assert.ok CornholeKeeper.Router
    assert.ok Ember.Router.detect(CornholeKeeper.Router)
