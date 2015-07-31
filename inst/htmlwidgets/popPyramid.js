HTMLWidgets.widget({

  name: 'popPyramid',

  type: 'output',

  initialize: function(el, width, height) {

    return {
      // TODO: add instance fields as required
    }

  },

  renderValue: function(el, x, instance) {

    var vis = d3.select('#pyramid').append('svg')
                .attr('width',550)
                .attr('height',600);


  },

  resize: function(el, width, height, instance) {

  }

});
