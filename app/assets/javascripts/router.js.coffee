CornholeKeeper.Router.map ->
  @resource "users", ->
    @route "new"
  @resource "teams", ->
    @route "new"
  @resource "team", path: "/teams/:team_id", ->
    @resource "team_memberships", ->
      @route "new"
