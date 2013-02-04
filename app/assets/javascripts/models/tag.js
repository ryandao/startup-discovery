StartupDiscovery.Tag = DS.Model.extend({
  name: DS.attr('string'),
  category: DS.belongsTo('StartupDiscovery.Category'),
  startups: DS.hasMany('StartupDiscovery.Startup')
});