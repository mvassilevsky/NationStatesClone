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
      this.issueOptionAjax("/api/issues/" + issueOptionId + "/respond");
    } else {
      this.issueOptionAjax("/api/issues/dismiss");
    }
  },

  issueOptionAjax: function (url) {
    $.ajax({
      data: {issue_id: this.model.id},
      url: url,
      dataType: "json",
      method: "POST",
      success: function () {
        Backbone.history.navigate("/issues", { trigger: true });
      }
    });
  }
});
