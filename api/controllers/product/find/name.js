module.exports = {


  friendlyName: 'Name',


  description: 'Name search.',


  inputs: {
    name: {
      type: 'string',
      description: 'The search term for names.',
      example: 'candy',
      required: true
    }

  },


  exits: {
    notFound: {
      description: 'No product for the search term was found.',
      responseType: 'notFound'
    }

  },


  fn: async function (inputs, exits) {
    var products = await Product.find({
      name: { 'contains': inputs.name }
    });

    if (!products) { return exits.notFound(); }

    return exits.success(products);

  }


};
