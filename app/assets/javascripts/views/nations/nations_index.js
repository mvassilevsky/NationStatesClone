NationStatesClone.Views.NationsIndex = Backbone.View.extend({
  template: JST['nations/index'],

  events: {
    "click .logout": "logout"
  },

  initialize: function (options) {
    this.currentNation = options.currentNation;
    this.listenTo(this.collection, 'sync', this.render);
  },

  render: function () {
    var content = this.template({
      nations: this.collection,
      currentNation: this.currentNation
    });
    this.$el.html(content);
    return this;
  },

  logout: function (event) {
    event.preventDefault();
    window.onbeforeunload = null;
    $.ajax({
      url: "/session",
      dataType: "json",
      method: "DELETE",
      success: function (response) {
        window.location = '';
      },
      error: function (response) {
        window.location = '';
      }
    });
  }
});
