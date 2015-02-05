NationStatesClone.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl = $('#main');
    if (NationStatesClone.CURRENT_NATION) {
      this.model = NationStatesClone.Collections.nations.getOrFetch(
          NationStatesClone.CURRENT_NATION
        )
      debugger;
    }
  },

  routes: {
    '': 'showLoggedInNation'
  },

  showLoggedInNation: function () {
    if (NationStatesClone.CURRENT_NATION) {
    }
  }
});
