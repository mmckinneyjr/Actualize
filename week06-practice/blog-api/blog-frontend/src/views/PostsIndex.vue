<script>
import axios from "axios";
export default {
  data: function () {
    return {
      message: "Posts",
      posts: [],
    };
  },
  created: function () {
    this.indexPosts();
  },
  methods: {
    indexPosts: function () {
      axios.get("/posts.json").then((response) => {
        console.log("All Posts:", this.posts);
        this.posts = response.data;
      });
    },
    formatDate(dateString) {
      const date = new Date(dateString);
      // Then specify how you want your dates to be formatted
      return new Intl.DateTimeFormat("default", { dateStyle: "long" }).format(date);
    },
  },
};
</script>

<template>
  <div
    class="home"
    style="
      background: url('https://wallpaperaccess.com/full/1091589.jpg');
      background-size: 280px;
      background-repeat: repeat;
      border-top: solid 7px black;
      background-color: lightgray;
    "
  >
    <br />
    <br />
    <div style="font-size: 70px; font-weight: bold">{{ message }}</div>
    <br />
    <div class="container">
      <div
        v-for="post in posts.slice().reverse()"
        v-bind:key="post.id"
        style="padding: 50px 200px 0px 200px; text-align: left; display: inline-block"
      >
        <div style="display: inline-block; position: relative; width: 25%; vertical-align: top">
          <img :src="post.image" alt="prod" style="width: 200px; border: 7px solid black; vertical-align: bottom" />
        </div>
        <div style="display: inline-block; position: relative; width: 75%; vertical-align: top; padding-bottom: 20px">
          <div style="font-weight: bold; font-size: 26px; padding-bottom: 0px">{{ post.title }}</div>
          <div style="font-size: 12px; padding-bottom: 10px">
            {{ formatDate(post.created_at) }}
          </div>
          <div>{{ post.body }}</div>
        </div>
        <br />
        <br />
        <br />
        <hr style="padding-bottom: 20px 0px 20px 0px; height: 1px; color: black; background: black" />
      </div>
    </div>
  </div>
</template>
