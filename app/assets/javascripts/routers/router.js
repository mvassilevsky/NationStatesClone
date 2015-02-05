NationStatesClone.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl = $('#main')
  },

  routes: {
    '': 'index'
  },

  index: function () {
    //if NationStatesClone.CURRENT_USER
  }
});
