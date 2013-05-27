#= require spec_helper
#= require store

describe "CornholeKeeper.Store", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  it "works with latest Ember-Data revision", ->
    assert.equal Test.store.get('revision'), 12
