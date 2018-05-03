module.exports = {


  friendlyName: 'Price',


  description: 'Price product.',


  inputs: {
    id: {
      description: 'The ID of the product to update its price.',
      type: 'number',
      example: 1,
      required: true
    },

    price: {
      type: 'number',
      description: 'The products new price.',
      example: 6.66,
      required: true
    }

  },


  exits: {
    notFound: {
      description: 'No product with the specified ID was found.',
      responseType: 'notFound'
    }

  },


  fn: async function (inputs, exits) {
    var product = await Product.findOne({ id: inputs.id });

    if (!product) { return exits.notFound(); }

    await Product.update({ id: product.id }).set({
      price: inputs.price
    });
    return exits.success();

  }


};
