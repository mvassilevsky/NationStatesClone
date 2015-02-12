NationStatesClone.Views.NationEdit = Backbone.View.extend({
  template: JST['nations/edit'],

  events: {
    "click .logout": "logout"
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
    $.ajax({
      url: "/api/nations/" + NationStatesClone.CURRENT_NATION.nation,
      dataType: "json",
      method: "DELETE"
    });
  },

  afterRender: function () {
    $("input[name='nation[currency]']").val(this.model.get('currency'));
    $("input[name='nation[animal]']").val(this.model.get('animal'));
    $("input[name='nation[motto]']").val(this.model.get('motto'));
    $("input[name='nation[leader_title]']").val(this.model.get('leader_title'));
  }
});
