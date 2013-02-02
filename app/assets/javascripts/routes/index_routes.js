StartupDiscovery.IndexRoute = Ember.Route.extend({
  setupController: function(controller) {
    controller.set('categories', StartupDiscovery.Category.find());
    controller.set('searchResults', StartupDiscovery.Startup.find());
  }
})