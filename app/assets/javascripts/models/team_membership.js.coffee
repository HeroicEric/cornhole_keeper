App.TeamMembership = DS.Model.extend
  team: DS.belongsTo('App.Team')
  user: DS.belongsTo('App.User')
