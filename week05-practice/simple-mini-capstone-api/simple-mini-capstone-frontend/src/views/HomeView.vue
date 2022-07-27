<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      products: [],
      newProductsParams: {},
    };
  },
  created: function () {
    this.indexProducts();
  },
  methods: {
    indexProducts: function () {
      axios.get("http://localhost:3000/products.json").then((response) => {
        console.log("All Products:", this.products);
        this.products = response.data;
      });
    },
    createNewProduct: function () {
      axios.post("http://localhost:3000/products.json", this.newProductsParams).then((response) => {
        console.log("Success", response);
        this.products.push(response.data);
        this.newProductsParams = {};
      });
    },
  },
};
</script>

<template>
  <div class="home">
    <h1>{{ message }}</h1>
    <h2>New Product</h2>
    <div>
      Name:
      <input type="text" v-model="newProductsParams.name" />
      <br />
      Description:
      <input type="text" v-model="newProductsParams.description" />
      <br />
      image_url:
      <input type="text" v-model="newProductsParams.image_url" />
      <br />
      price:
      <input type="text" v-model="newProductsParams.price" />
    </div>
    <br />
    <button v-on:click="createNewProduct()">Create Product</button>

    <div class="container">
      <div v-for="product in products" v-bind:key="product.id" style="padding: 50px 0px 0px 0px">
        <img class="images" :src="product.image_url" alt="prod" />
        <div class="name">{{ product.name }}</div>
        <div class="price">{{ product.description }}</div>
        <div class="price">${{ product.price }}</div>
        <br />
      </div>
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

.images {
  height: 200px;
}
.container {
  display: inline-block;
  text-align: left;
}
</style>
