StartupDiscovery.CompanyPhotoView = Ember.View.extend({
  templateName: 'company_photo',
  startupID: null,
  tagList: null,

  didInsertElement: function() {
    var tagNameList = this.get('tagList').get('content').map(function(e) { return e.name });
    var tooltipOptions = {
      placement: 'left',
      title: tagNameList.join(", ")
    };
    debugger;
    $('.result-container', this.get('element')).tooltip(tooltipOptions);
  }
});
