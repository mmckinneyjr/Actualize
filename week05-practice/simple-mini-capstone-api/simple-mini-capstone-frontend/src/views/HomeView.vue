<script>
import axios from "axios";

export default {
  data: function () {
    return {
      message: "Welcome to Vue.js!",
      products: [],
      newProductsParams: {},
      editProductsParams: {},
      currentProduct: {},
    };
  },
  created: function () {
    this.indexProducts();
  },
  methods: {
    indexProducts: function () {
      axios.get("/products.json").then((response) => {
        console.log("All Products:", this.products);
        this.products = response.data;
      });
    },
    showProduct: function (product) {
      console.log(product);
      this.currentProduct = product;
      this.editProductsParams = product;
      document.querySelector("#product-details").showModal();
    },
    createNewProduct: function () {
      axios
        .post("http://localhost:3000/products.json", this.newProductsParams)
        .then((response) => {
          console.log("Success", response);
          this.products.push(response.data);
          this.newProductsParams = {};
        })
        .catch((error) => console.log(error.response));
    },
    editProduct: function (product) {
      console.log(product);
      this.currentProduct = product;
      this.editProductsParams = product;
      document.querySelector("#product-details").showModal();
    },
    updateProduct: function (product) {
      axios.patch("http://localhost:3000/products/" + product.id, this.editProductsParams).then((response) => {
        console.log("Success!", response.data);
      });
    },
    deleteProduct: function (product) {
      axios.delete("http://localhost:3000/products/" + product.id).then((response) => {
        console.log("Success!", response.data);
        var i = this.products.indexOf(product);
        this.products.splice(i, 1);
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

    <button v-on:click="createNewProduct()">Create Product</button>
    <br />
    <div class="container">
      <div v-for="product in products" v-bind:key="product.id" style="padding: 50px 0px 0px 0px">
        <img class="images" :src="product.image_url" alt="prod" />
        <div class="name">{{ product.name }}</div>
        <!-- <div class="price">{{ product.description }}</div>
        <div class="price">${{ product.price }}</div> -->
        <button v-on:click="showProduct(product)">More Info</button>
        <br />
      </div>
      <!--  -->
      <dialog id="product-details">
        <form method="dialog" style="max-width: 500px">
          <h1>Product Info</h1>
          <p>
            Name:
            <input type="text" v-model="editProductsParams.name" />
          </p>
          <p>
            Description:
            <input type="text" v-model="editProductsParams.description" />
          </p>
          <p>
            Price:
            <input type="text" v-model="editProductsParams.price" />
          </p>
          <p>
            Image URL:
            <input type="text" v-model="editProductsParams.image_url" />
          </p>
          <div style="text-align: center">
            <button v-on:click="updateProduct(currentProduct)">Edit</button>
            <button v-on:click="deleteProduct(currentProduct)">Delete</button>
            <button>Close</button>
          </div>
        </form>
      </dialog>
      <!--  -->
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
