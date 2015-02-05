NationStatesClone.Views.NationShow = Backbone.View.extend({
  template: JST['nations/show'],

  initialize: function () {
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    var content = this.template({
      nation: this.model
    });
    this.$el.html(content);
    return this;
  }
});
