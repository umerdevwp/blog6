/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

// Vue.component('example-component', require('./components/ExampleComponent.vue'));
import store from './store/index'

// Posts Components Aquire
import Posts from './components/Posts.vue';
Vue.component('all-posts', Posts);
//Vue.component('posts', require('./components/Posts.vue'))
import CreatePost from './components/CreatePost.vue';
Vue.component('createPost', CreatePost);
//Vue.component('createPost', require('./components/CreatePost.vue'))


// Tasks Component Aquire
import Tasks from './components/Tasks.vue';
Vue.component('all-tasks', Tasks);
//
import CreateTask from './components/CreateTask.vue';
Vue.component('createTask', CreateTask);


const app = new Vue({
    el: '#app',
    store
});