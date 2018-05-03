module.exports = {


  friendlyName: 'Find',


  description: 'Find product.',


  inputs: {
    term: {
      type: 'string',
      description: 'The search term for product names.',
      example: 'candy',
      required: false
    },

    sort: {
      type: 'string',
      description: 'The attribute to sort by',
      isIn: ['likesQty', 'name'],
      defaultsTo: 'name'
    },

    order: {
      type: 'string',
      description: 'The order by.',
      isIn: ['asc', 'desc'],
      defaultsTo: 'asc'
    },

    skip: {
      type: 'number',
      description: 'The number of products to skip.',
      min: 0,
      required: false
    },

    limit: {
      type: 'number',
      description: 'The amount of products to retrieve.',
      min: 1,
      required: false
    },
  },


  exits: {

  },


  fn: async function (inputs, exits) {
    var params = { sort: `${inputs.sort} ${inputs.order}`};

    if (inputs.term) { params['where'] = { name: { 'contains': inputs.term } }; }

    if (inputs.skip) { params['skip'] = inputs.skip }

    if (inputs.limit) { params['limit'] = inputs.limit }

    var products = await Product.find(params);
    return exits.success(products);
  }


};
