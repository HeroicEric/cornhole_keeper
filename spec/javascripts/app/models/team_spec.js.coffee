#= require spec_helper

describe "CornholeKeeper.Team", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  it "is a DS.Model", ->
    assert.ok CornholeKeeper.Team
    assert.ok DS.Model.detect(CornholeKeeper.Team)
