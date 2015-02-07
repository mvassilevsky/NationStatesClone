NationStatesClone.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl = $('#main');
  },

  routes: {
    '': 'showLoggedInNation',
    'issues': 'issueIndex'
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

  issueIndex: function () {
    if (NationStatesClone.CURRENT_NATION) {
      NationStatesClone.Collections.issues.fetch();
      var nation = NationStatesClone.Collections.nations.getOrFetch(
        NationStatesClone.CURRENT_NATION.nation
      );
      var indexView = new NationStatesClone.Views.IssuesIndex({
        collection: NationStatesClone.Collections.issues,
        model: nation
      });
      this._swapView(indexView);
    }
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
