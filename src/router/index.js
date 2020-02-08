import Vue from 'vue';
import VueRouter from 'vue-router';
import Home from '../views/Home.vue';

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
    component: () => import('../views/About.vue')
  },
  {
    path: '/eboard',
    name: 'EBoard',
    component: () => import('../views/EBoard.vue')
  },
  {
    path: '/members',
    name: 'Members',
    component: () => import('../views/Members.vue')
  },
  {
    path: '/conduct',
    name: 'Conduct',
    component: () => import('../views/Conduct.vue')
  }
];

const router = new VueRouter({
  routes
});

export default router;
