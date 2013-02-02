StartupDiscovery.Category = DS.Model.extend({
  name: DS.attr('string'),
  tags: DS.hasMany('StartupDiscovery.Tag', { embedded: true })
});