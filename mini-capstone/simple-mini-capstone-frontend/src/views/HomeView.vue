<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      products: [],
    };
  },
  created: function () {
    this.indexProducts();
  },
  methods: {
    indexProducts: function () {
      axios.get("http://localhost:3000/products.json").then((response) => {
        this.products = response.data;
      });
    },
    createNewProduct: function () {
      var params = {
        name: "",
        price: "",
        description: "",
        supplier.id: "",
      };

      axios.post("http://localhost:3000product.json", params).then((response) => {
        console.log("Success", response);
        this.products.push(response.data);
      });
    },
  },
};
</script>

<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <h2>New Product</h2>
    <button v-on:click="createNewProduct()">Create</button>
    <div v-for="product in products" v-bind:key="product.id">
      <img :src="product.images.url" alt="prod" />
      <div class="name">{{ product.name }}</div>
      <div class="price">{{ product.description }}</div>
      <div class="price">${{ product.price }}</div>
      <div class="price">Sold by: {{ product.supplier.name }}</div>
      <br />
    </div>
  </div>
</template>

<style>
.name {
  size: 24px;
  font-weight: 600;
  text-align: left;
}
.price {
  size: 18px;
  text-align: left;
}
</style>
