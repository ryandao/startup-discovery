DS.RESTAdapter.configure("plurals", { category: "categories" });

StartupDiscovery.Store = DS.Store.extend({
  revision: 11,
  adapter: DS.RESTAdapter.create({
    bulkCommit: true
  })
});

