NationStatesClone.Views.IssueShow = Backbone.View.extend({
  template: JST['issues/show'],

  events: {
    "click .logout": "logout",
    "click button": "selectIssueOption"
  },

  initialize: function (options) {
    this.nation = options.nation;
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function() {
    var content = this.template({
      nation: this.nation,
      issue: this.model
    });
    this.$el.html(content);
    return this;
  },

  logout: function (event) {
    $.ajax({
      url: "/api/nations/" + NationStatesClone.CURRENT_NATION.nation,
      dataType: "json",
      method: "DELETE"
    });
  },

  selectIssueOption: function (event) {
    if (event.currentTarget.name !== "dismiss") {
      var issueOptionId = event.currentTarget.name;
      $.ajax({
        data: {issue_id: this.model.id},
        url: "/api/issues/" + issueOptionId + "/respond",
        dataType: "json",
        method: "POST"
      });
    } else {
      $.ajax({
        data: {issue_id: this.model.id},
        url: "/api/issues/dismiss",
        dataType: "json",
        method: "POST"
      });
    }
    Backbone.history.navigate("/issues", { trigger: true });
  }
});
