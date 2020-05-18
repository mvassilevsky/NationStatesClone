NationStatesClone.Views.NationEdit = Backbone.View.extend({
  template: JST['nations/edit'],

  events: {
    "click .logout": "logout",
    "submit form": "updateNation"
  },

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    var content = this.template({
      nation: this.model
    });
    this.$el.html(content);
    this.afterRender();
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
  },

  afterRender: function () {
    $("input[name='nation[currency]']").val(this.model.get('currency'));
    $("input[name='nation[animal]']").val(this.model.get('animal'));
    $("input[name='nation[motto]']").val(this.model.get('motto'));
    $("input[name='nation[leader_title]']").val(this.model.get('leader_title'));
  },

  updateNation: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var that = this;
    this.model.save(attrs, {
      success: function () {
        NationStatesClone.Collections.nations.add(that.model, { merge: true });
        Backbone.history.navigate("", { trigger: true });
      }
    });
  }
});
