/**
 * Product.js
 *
 * @description :: A Product definition.  Represents an item to be comercialized.
 */

module.exports = {

  attributes: {

    //  ╔═╗╦═╗╦╔╦╗╦╔╦╗╦╦  ╦╔═╗╔═╗
    //  ╠═╝╠╦╝║║║║║ ║ ║╚╗╔╝║╣ ╚═╗
    //  ╩  ╩╚═╩╩ ╩╩ ╩ ╩ ╚╝ ╚═╝╚═╝

    name: {
      type: 'string',
      description: 'Identifier for a product.',
      required: true,
      maxLength: 100,
      example: 'Balloon',
      unique: true
    },

    description: {
      type: 'string',
      description: 'Product description.',
      required: false,
      maxLength: 500,
      example: 'A beautiful red balloon for you to float!'
    },

    stock: {
      type: 'number',
      description: 'Quantity available for a product.',
      min: 0,
      defaultsTo: 0
    },

    price: {
      type: 'number',
      description: 'Individual price for a product.',
      min: 0,
      required: true
    },

    likesQty: {
      type: 'number',
      description: 'Likes quantity for a product. Helper attribute to avoid aggregated queries.',
      min: 0,
      defaultsTo: 0
    },

    //  ╔═╗╔╦╗╔╗ ╔═╗╔╦╗╔═╗
    //  ║╣ ║║║╠╩╗║╣  ║║╚═╗
    //  ╚═╝╩ ╩╚═╝╚═╝═╩╝╚═╝


    //  ╔═╗╔═╗╔═╗╔═╗╔═╗╦╔═╗╔╦╗╦╔═╗╔╗╔╔═╗
    //  ╠═╣╚═╗╚═╗║ ║║  ║╠═╣ ║ ║║ ║║║║╚═╗
    //  ╩ ╩╚═╝╚═╝╚═╝╚═╝╩╩ ╩ ╩ ╩╚═╝╝╚╝╚═╝

    purchases: {
      description: 'Purchases made of this product.',
      collection: 'purchase',
      via: 'item'
    },

    likes: {
      description: 'Likes instances for this product.',
      collection: 'like',
      via: 'item'
    }
  },

};

