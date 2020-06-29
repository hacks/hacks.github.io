import Vue from 'vue';
import App from './App.vue';
import router from './router';
import * as Ackee from 'ackee-tracker';

Vue.config.productionTip = false;

new Vue({
  router,
  render: (h) => h(App),
  mounted: () => document.dispatchEvent(new Event("x-app-rendered")),
}).$mount('#app');

if (typeof window !== 'undefined') {
  Ackee.create({
    server: 'https://ackee.nuhacks.io',
    domainId: 'd7ef3906-37ed-4496-81d1-8c6a22e58231'
  }, {
    ignoreLocalhost: true,
    detailed: false
  }).record();
}
