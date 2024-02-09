import Home from '../views/Home.vue';
import About from '../views/About.vue';
import EBoard from '../views/EBoard.vue';
import Members from '../views/Members.vue';
import Conduct from '../views/Conduct.vue';
import { createRouter, createWebHistory } from 'vue-router';

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

const router = createRouter({
  history: createWebHistory(),
  routes: routes,
});

Object.freeze(routes);
export default router;
export { routes };
