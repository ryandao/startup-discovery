StartupDiscovery.TaglistRoute = Ember.Route.extend({
  setupControllers: function() {
    debugger;
    this.set('controller.categories', [
      { name: 'Space', tags: [
        { name: 'boating' },
        { name: 'cloud' }
      ]},
      { name: 'Business model', tags: [
        { name: 'freemium' },
        { name: 'advertising' }
      ]}
    ])
  }
});
