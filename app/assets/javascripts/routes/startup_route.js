StartupDiscovery.StartupRoute = Ember.Route.extend({
  model: function(params) {
    return StartupDiscovery.Startup.find(params.startup_id);
  },

  setupController: function(controller, model) {
    controller.set('content', model)
  }
});
