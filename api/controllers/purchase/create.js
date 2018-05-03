module.exports = {


  friendlyName: 'Create',


  description: 'Create purchase.',


  inputs: {
    buyer: {
      type: 'number',
      description: 'The buyer ID.',
      example: 66,
      required: true
    },

    item: {
      type: 'number',
      description: 'The item ID.',
      example: 33,
      required: true
    },

    quantity: {
      type: 'number',
      description: 'The purchased quantity.',
      example: 2,
      defaultsTo: 1
    }
  },

  exits: {
    notFound: {
      description: 'No buyer or item for the purchase was found.',
      responseType: 'notFound'
    },

    stockNotValid: {
      description: 'The stock for the item is insufficient.',
      responseType: 'badRequest'
    },

  },


  fn: async function (inputs, exits) {
    var item = await Product.findOne({ id: inputs.item })
    var buyer = await User.findOne({ id: inputs.buyer })

    if (!item || !buyer) { return exits.notFound(); }

    var remainingItemsInStock = item.stock - inputs.quantity;

    if (remainingItemsInStock < 0) { return exits.stockNotValid(); }

    await Product.update({ id: item.id }).set({
      stock: remainingItemsInStock
    });

    await Purchase.create({
      item: item.id,
      buyer: buyer.id,
      quantity: inputs.quantity
    });

    return exits.success();

  }


};
