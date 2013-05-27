#= require spec_helper

describe "CornholeKeeper.User", ->
  beforeEach( ->
    Test.store = TestUtil.lookupStore()
  )

  it "is a DS.Model", ->
    assert.ok CornholeKeeper.User
    assert.ok DS.Model.detect(CornholeKeeper.User)

  describe "fullName", ->
    it "combines the first and last names", ->
      Ember.run ->
        user = CornholeKeeper.User.createRecord(
          firstName: "Eric",
          lastName: "Kelly"
        )
        expect(user.get("fullName")).to.equal "Eric Kelly"
