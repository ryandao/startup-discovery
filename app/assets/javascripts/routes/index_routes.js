StartupDiscovery.IndexRoute = Ember.Route.extend({
  redirect: function() {
    this.transitionTo('startups');
  }
})