import Ember from 'ember';
import AnimateGradient from '../../../mixins/animate-gradient';

export default Ember.Component.extend(AnimateGradient, {
  tagName: "radialGradient",
  attributeBindings: ["cx", "cy", "r", "fx", "fy"],
  animateBg: Ember.on("willInsertElement", function(){
    this.animateGradient([this.$("#stop1"), this.$("#stop2")], "stop-color", 0.005);
  })
});

