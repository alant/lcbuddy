import Vue from 'vue'
import App from './App.vue'
import vuetify from './plugins/vuetify';
import VueRouter from 'vue-router'
import TodoList from './components/TodoList'
import Login from './components/Login'

Vue.config.productionTip = false

const routes = [
  { path: '/login', component: Login},
  { path: '/todo', component: TodoList}
]
const router = new VueRouter({
  routes // short for `routes: routes`
})

Vue.use(VueRouter)

new Vue({
  vuetify,
  router,
  render: h => h(App)
}).$mount('#app')
