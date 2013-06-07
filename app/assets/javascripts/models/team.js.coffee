CornholeKeeper.Team = DS.Model.extend
  name: DS.attr("string")
  team_memberships: DS.hasMany('CornholeKeeper.TeamMembership')
  users: DS.hasMany('CornholeKeeper.User')
