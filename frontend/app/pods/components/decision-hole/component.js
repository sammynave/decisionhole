import Ember from 'ember';
import AnimateGradient from '../../../mixins/animate-gradient';

export default Ember.Component.extend(AnimateGradient, {
  tagName: "circle",
  attributeBindings: ["stroke-meterlimit", "cx", "cy", "r", "fill"],
  animateBg: Ember.on("willInsertElement", function(){
    this.animateGradient([this.$()], "stroke", 0.001);
  })
});
