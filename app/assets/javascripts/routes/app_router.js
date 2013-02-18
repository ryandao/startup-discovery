StartupDiscovery.Router.map(function() {
  this.resource('startups', { path: '/explore' }, function() {
    this.resource('startup', { path: '/startups/:startup_id' });
  });
});