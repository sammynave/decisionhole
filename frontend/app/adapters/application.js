import DS from "ember-data";
import config from "frontend/config/environment";

export default DS.ActiveModelAdapter.extend({
  host: config.APP.API_HOST
});
