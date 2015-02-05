NationStatesClone.Collections.Nations = Backbone.Collection.extend({
  model: NationStatesClone.Models.Nation,
  url: 'api/boards',

  getOrFetch: function (id) {
    var nation = this.get(id);
    if (nation) {
      nation.fetch();
    } else {
      nation = new NationStatesClone.Models.Nation({ id: id })
      nation.fetch({
        success: function () {
          this.add(nation);
        }.bind(this)
      })
    }

    return nation;
  }


});

NationStatesClone.Collections.nations = new NationStatesClone.Collections.Nations();
