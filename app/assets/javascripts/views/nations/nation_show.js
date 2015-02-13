NationStatesClone.Views.NationShow = Backbone.View.extend({
  template: JST['nations/show'],

  events: {
    "click .logout": "logout"
  },

  initialize: function (options) {
    this.currentNation = options.currentNation
    this.listenTo(this.model, 'sync', this.render);
  },

  render: function () {
    var content = this.template({
      nation: this.model,
      currentNation: this.currentNation,
      issues: this.collection
    });
    this.$el.html(content);
    this.afterRender();
    return this;
  },

  afterRender: function () {
    if (this.model.get('last_few_stats')) {
      var ctx = this.$("#stats").get(0).getContext("2d");
      var data = this.getData();
      var statsChart = new Chart(ctx).Line(data, {
        datasetStrokeWidth : 4,
        bezierCurveTension : 0.3,
        multiTooltipTemplate: "<%= datasetLabel %> - <%= value %>"
      });
    }
  },

  logout: function (event) {
    event.preventDefault();
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

  getData: function () {
    var soc_freedoms = [];
    var ec_freedoms = [];
    var pol_freedoms = [];
    debugger;
    this.model.get('last_few_stats').forEach(function (stat) {
      soc_freedoms.push(stat.soc_freedom)
      ec_freedoms.push(stat.ec_freedom)
      pol_freedoms.push(stat.pol_freedom)
    });
    var labels = [];
    var num_stats = this.model.get('last_few_stats').length
    for (var i = 0; i < num_stats; i++) {
      labels.push("");
    }
    return {
        labels: labels,
        datasets: [
            {
                label: "Individual Liberty",
                fillColor: "rgba(255,255,255,0)",
                strokeColor: "rgb(128,0,0)",
                pointColor: "rgb(128,0,0)",
                pointStrokeColor: "#aaa",
                pointHighlightFill: "#aaa",
                pointHighlightStroke: "rgb(128,0,0)",
                data: soc_freedoms
            },
            {
                label: "Economy",
                fillColor: "rgba(255,255,255,0)",
                strokeColor: "rgb(234,193,23)",
                pointColor: "rgb(234,193,23)",
                pointStrokeColor: "#aaa",
                pointHighlightFill: "#aaa",
                pointHighlightStroke: "rgb(234,193,23)",
                data: ec_freedoms
            },
            {
                label: "Political Freedom",
                fillColor: "rgba(255,255,255,0)",
                strokeColor: "rgb(100,100,100)",
                pointColor: "rgb(100,100,100)",
                pointStrokeColor: "#aaa",
                pointHighlightFill: "#aaa",
                pointHighlightStroke: "rgba(100,100,100)",
                data: pol_freedoms
            }
        ]
    };
  }

});
