StartupDiscovery.StartupView = Ember.View.extend({
  classNames: "modal hide",
  templateName: 'startup',

  didInsertElement: function() {
    this.$().modal();
    this.$().on('hidden', function() {
      // Throw this to the route to handle
      StartupDiscovery.Router.router.trigger('modalHidden');
    })
  }
});
