NationStatesClone.Collections.Issues = Backbone.Collection.extend({
  model: NationStatesClone.Models.Issue,
  url: 'api/issues',

  getOrFetch: function (id) {
    var issue = this.get(id);
    if (issue) {
      issue.fetch();
    } else {
      issue = new NationStatesClone.Models.Issue({ id: id })
      issue.fetch({
        success: function () {
          this.add(issue);
        }.bind(this)
      })
    }

    return issue;
  },

  parse: function (response) {
    return response.issues;
  }

});

NationStatesClone.Collections.issues = new NationStatesClone.Collections.Issues();
