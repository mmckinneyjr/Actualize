````
vue create simple-mini-capstone-frontend
````
````
cd simple-mini-capstone-frontend
````
````
npm run serve
````
Replace src/views/HomeView.vue with the following:
````
<script>
export default {
  data: function() {
    return {
      message: "Welcome to Vue.js!"
    };
  },
  created: function() {},
  methods: {}
};
</script>

<template>
  <div class="home">
    <h1>{{ message }}</h1>
  </div>
</template>

<style></style>
````

Install axios for JavaScript web requests
````
npm install axios --save
````
Start .Vue Server
````
npm run serve      
````
Quick notes:<br>
for loop
````
<div v-for="product in products" v-bind:key="product.id">

````
render image
````
<img :src="product.images.url" alt="prod" />
````