#= require spec_helper

describe "CornholeKeeper.TeamMembership", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  it "is a DS.Model", ->
    assert.ok CornholeKeeper.TeamMembership
    assert.ok DS.Model.detect(CornholeKeeper.TeamMembership)
