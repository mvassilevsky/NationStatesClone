window.NationStatesClone = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new NationStatesClone.Routers.Router();
    Backbone.history.start();
  }
};

$(document).ready(function(){
  NationStatesClone.initialize();
});
