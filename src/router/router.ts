import { createWebHistory, createRouter } from 'vue-router'

import HomeView from "../components/Home.vue"
import AboutView from "../components/About.vue"
import LoginView from "../components/Login.vue"

const routes = [
  { path: '/', name: 'Home' , component: HomeView },
  { path: '/about', name: 'About', component: AboutView },
  { path: '/login', name: 'Login', component: LoginView },
]

const router = createRouter({
  history: createWebHistory(),  // Use createWebHistory for proper URL updates
  routes,
})

export default router
