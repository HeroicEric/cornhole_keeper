CornholeKeeper.TeamMembership = DS.Model.extend
  team: DS.belongsTo('CornholeKeeper.Team')
  user: DS.belongsTo('CornholeKeeper.User')
