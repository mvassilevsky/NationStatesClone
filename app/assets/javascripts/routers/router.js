NationStatesClone.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl = $('#main');
  },

  routes: {
    '': 'showLoggedInNation'
  },

  showLoggedInNation: function () {
    if (NationStatesClone.CURRENT_NATION) {
      var nation = NationStatesClone.Collections.nations.getOrFetch(
        NationStatesClone.CURRENT_NATION.nation
      );
      var nationView = new NationStatesClone.Views.NationShow({
        model: nation
      });
      this._swapView(nationView);
    }
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
