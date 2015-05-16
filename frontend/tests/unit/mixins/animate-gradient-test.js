import Ember from 'ember';
import AnimateGradientMixin from '../../../mixins/animate-gradient';
import { module, test } from 'qunit';

module('Unit | Mixin | animate gradient');

// Replace this with your real tests.
test('it works', function(assert) {
  var AnimateGradientObject = Ember.Object.extend(AnimateGradientMixin);
  var subject = AnimateGradientObject.create();
  assert.ok(subject);
});
