module.exports = {


  friendlyName: 'Create',


  description: 'Create like.',


  inputs: {
    item: {
      type: 'number',
      description: 'The item ID.',
      example: 33,
      required: true
    }
  },

  exits: {
    notFound: {
      description: 'No owner or item for the purchase was found.',
      responseType: 'notFound'
    },
  },


  fn: async function (inputs, exits) {
    var item = await Product.findOne({ id: inputs.item })
    var owner = await User.findOne({ id: this.req.me.id })

    if (!item || !owner) { return exits.notFound(); }

    await Product.update({ id: item.id }).set({
      likesQty: item.likesQty + 1
    });

    await Like.create({
      item: item.id,
      owner: owner.id
    });

    return exits.success();

  }


};
