StartupDiscovery.Startup = DS.Model.extend({
  name: DS.attr('string'),
  img_url: DS.attr('string'),
  company_url: DS.attr('string'),
  angellist_url: DS.attr('string'),
  description: DS.attr('string'),
  tags: DS.hasMany('StartupDiscovery.Tag', { embedded: true })
});