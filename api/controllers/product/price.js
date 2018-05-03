module.exports = {


  friendlyName: 'Price',


  description: 'Price product.',


  inputs: {
    id: {
      type: 'number',
      description: 'The product ID to update its price.',
      example: 1,
      required: true
    },

    price: {
      type: 'number',
      description: 'The new product price.',
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
