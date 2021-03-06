module.exports = {


  friendlyName: 'Stock',


  description: 'Stock product.',


  inputs: {
    id: {
      type: 'number',
      description: 'The product ID to update its stock.',
      example: 1,
      required: true
    },

    quantity: {
      type: 'number',
      description: 'The new product stock.',
      example: 6,
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
      stock: inputs.quantity
    });
    return exits.success();

  }


};
