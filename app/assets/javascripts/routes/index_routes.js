StartupDiscovery.IndexRoute = Ember.Route.extend({
  setupControllers: function(controller) {
    controller.set('categories', [
      { name: 'Space', tags: [
        { id: 1, name: 'boating' },
        { id: 2, name: 'cloud' },
        { id: 3, name: 'social analytics' },
        { id: 4, name: 'mobile gaming' },
        { id: 5, name: 'media' },
      ]},
      { name: 'Business model', tags: [
        { id: 6, name: 'freemium' },
        { id: 7, name: 'advertising' },
        { id: 8, name: 'product sales' },
        { id: 9, name: 'enterprise' },
        { id: 10, name: 'collaborative consumptions' },
      ]},
      { name: 'Founders', tags: [
        { id: 11, name: 'technical' },
        { id: 12, name: 'stanford' },
        { id: 13, name: 'design' },
        { id: 14, name: 'MIT' },
        { id: 15, name: 'serial entrepreneur' },
      ]},
      { name: 'Culture', tags: [
        { id: 16, name: 'flexible' },
        { id: 17, name: 'casual' },
        { id: 18, name: 'fun' },
        { id: 19, name: 'busniess' },
        { id: 20, name: 'young' },
      ]},
    ])
  }

})