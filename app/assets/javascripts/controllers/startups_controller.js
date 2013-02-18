StartupDiscovery.StartupsController = Ember.Controller.extend({
  categories: null,
  searchTags: [],
  searchResults: null,

  addOrRemoveTagInQuery: function(event) {
    var view = this;
    var tagIdValue = view.get('tagIdValue');
    var controller = view.get('controller');
    var searchTags = controller.get('searchTags');
    var index = searchTags.indexOf(tagIdValue);

    if (index >= 0) {
      view.set('selected', false);
      searchTags.splice(index, 1);
    } else {
      view.set('selected', true);
      searchTags.push(tagIdValue);
    }

    controller.search();
  },

  search: function() {
    this.set('searchResults', StartupDiscovery.Startup.find({tags: this.get('searchTags')}))
    console.log(this.get('searchTags'));
  },
});