import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';
import About from '../views/About.vue';
import EBoard from '../views/EBoard.vue';
import Members from '../views/Members.vue';
import Conduct from '../views/Conduct.vue';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    name: 'Home',
    component: Home,
  },
  {
    path: '/about',
    name: 'About',
    component: About
  },
  {
    path: '/eboard',
    name: 'EBoard',
    component: EBoard
  },
  {
    path: '/people',
    name: 'People',
    component: Members
  },
  {
    path: '/conduct',
    name: 'Conduct',
    component: Conduct
  }
];

const router = new VueRouter({
  routes
});

export default router;
export { routes };
