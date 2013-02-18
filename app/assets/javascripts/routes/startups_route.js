StartupDiscovery.StartupsRoute = Ember.Route.extend({
  model: function() {
    return StartupDiscovery.Startup.find();
  },

  setupController: function(controller, model) {
    controller.set('categories', StartupDiscovery.Category.find());
    controller.set('searchResults', model);
  },

  events: {
    modalHidden: function() {
      this.transitionTo('startups');
    }
  }
})