module.exports = {


  friendlyName: 'Find',


  description: 'Find product.',


  inputs: {
    term: {
      type: 'string',
      description: 'The search term for product names.',
      example: 'candy',
      required: false
    }
  },


  exits: {

  },


  fn: async function (inputs, exits) {
    var params = { sort: 'name' };

    if (inputs.term) { params['where'] = { name: { 'contains': inputs.term } }; }

    var products = await Product.find(params);
    return exits.success(products);
  }


};
