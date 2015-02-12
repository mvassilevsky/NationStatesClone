NationStatesClone.Routers.Router = Backbone.Router.extend({
  initialize: function () {
    this.$rootEl = $('#main');
  },

  routes: {
    '': 'loggedInNationShow',
    'issues': 'issueIndex',
    'issues/:id': 'issueShow',
    'nations/:id': 'nationShow'
  },

  loggedInNationShow: function () {
    if (NationStatesClone.CURRENT_NATION) {
      var nation = NationStatesClone.Collections.nations.getOrFetch(
        NationStatesClone.CURRENT_NATION.nation
      );
      var nationView = new NationStatesClone.Views.NationShow({
        model: nation,
        currentNation: nation
      });
      this._swapView(nationView);
    }
  },

  nationShow: function(id) {
    if (NationStatesClone.CURRENT_NATION) {
      var nation = NationStatesClone.Collections.nations.getOrFetch(id);
      var currentNation = NationStatesClone.Collections.nations.getOrFetch(
        NationStatesClone.CURRENT_NATION.nation
      );
      var nationView = new NationStatesClone.Views.NationShow({
        model: nation,
        currentNation: currentNation
      });
      this._swapView(nationView);
    } else {
      var nation = NationStatesClone.Collections.nations.getOrFetch(id);
      var currentNation = undefined;
      var nationView = new NationStatesClone.Views.NationShow({
        model: nation,
        currentNation: currentNation
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

  issueShow: function(id) {
    if (NationStatesClone.CURRENT_NATION) {
      var nation = NationStatesClone.Collections.nations.getOrFetch(
        NationStatesClone.CURRENT_NATION.nation
      );
      var issue = NationStatesClone.Collections.issues.getOrFetch(id);
      var issueView = new NationStatesClone.Views.IssueShow({
        model: issue,
        nation: nation
      });
      this._swapView(issueView);
    }
  },

  _swapView: function (view) {
    this._currentView && this._currentView.remove();
    this._currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
