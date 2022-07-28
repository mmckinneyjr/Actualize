<script>
import axios from "axios";
export default {
  data: function () {
    return {
      newPostParams: {},
      errors: [],
    };
  },
  created: function () {},
  methods: {
    createPost: function () {
      axios
        .post("/posts.json", this.newPostParams)
        .then((response) => {
          console.log("posts create", response);
          this.$router.push("/posts");
        })
        .catch((error) => {
          console.log("posts create error", error.response);
          this.errors = error.response.data.errors;
        });
      this.newPostParams = {};
    },
  },
};
</script>

<template>
  <div class="posts-new">
    <h1>New Post</h1>
    <form v-on:submit.prevent="createPost()">
      <ul>
        <li v-for="error in errors" v-bind:key="error">{{ error }}</li>
      </ul>
      Name:
      <input type="text" v-model="newPostParams.title" />
      Body:
      <input type="text" v-model="newPostParams.body" />
      Image Url:
      <input type="text" v-model="newPostParams.image" />
      <br />
      <br />
      <input type="submit" value="Create" />
    </form>
  </div>
</template>
