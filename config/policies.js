/**
 * Policy Mappings
 * (sails.config.policies)
 *
 * Policies are simple functions which run **before** your actions.
 *
 * For more information on configuring policies, check out:
 * https://sailsjs.com/docs/concepts/policies
 */

module.exports.policies = {

  '*': 'is-logged-in',

  // Bypass the `is-logged-in` policy for:
  'entrance/*': true,
  'account/logout': true,
  'view-homepage-or-redirect': true,
  'deliver-contact-form-message': true,
  'security/grant-csrf-token': true,
  'product/find': true,
  'product/create': 'is-super-admin',
  'product/update': 'is-super-admin',
  'product/stock': 'is-super-admin', //Not in requirements
  'product/price': 'is-super-admin'

};
