import Ember from 'ember';

export default Ember.Controller.extend({
  showSplash: false,
  onPathChange: Ember.on("routeTransition", Ember.observer('currentPath', function() {
    this.set("showSplash", this.get('currentPath') === 'index');
  }))
});
