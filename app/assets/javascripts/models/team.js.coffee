App.Team = DS.Model.extend
  name: DS.attr("string")
  team_memberships: DS.hasMany('App.TeamMembership')
  users: DS.hasMany('App.User')
