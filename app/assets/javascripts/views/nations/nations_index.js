NationStatesClone.Views.NationsIndex = Backbone.View.extend({
  template: JST['nations/index'],

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
  }
});
