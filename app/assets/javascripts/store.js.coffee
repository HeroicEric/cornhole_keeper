CornholeKeeper.Store = DS.Store.extend
  revision: 12
  adapter: DS.RESTAdapter.create()

CornholeKeeper.User = DS.Model.extend
  firstName: DS.attr("string")
  lastName: DS.attr("string")

  fullName:( ->
    @get('firstName') + " " + @get('lastName')
  ).property('firstName', 'lastName')


CornholeKeeper.Team = DS.Model.extend
  firstName: DS.attr("string")
  lastName: DS.attr("string")

  fullName:( ->
    @get('firstName') + " " + @get('lastName')
  ).property('firstName', 'lastName')
