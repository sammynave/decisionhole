import DS from 'ember-data';
import config from 'frontend/config/environment'

export default DS.RESTAdapter.extend({
  host: config.APP.HOST
});
