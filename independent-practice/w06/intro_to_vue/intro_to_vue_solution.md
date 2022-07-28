### Paste your HTML code here:

<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>Practice Vue.js</title>
    <script src="https://unpkg.com/vue@next"></script>
    <script src="index.js" defer></script>

    <style>
      .title {
        font-size: 24px;
        font-weight: 600;
        padding: 30px 0px 0px 0px;
      }
    </style>
  </head>
  <body>
    <h1>Hello from HTML!</h1>
    <div id="app">
      <h1>{{ message }}</h1>
      <div class="title">Add Movie</div>
      <input type="text" v-model="newMovie" />
      <button v-on:click="addMovie()">Add</button>
      <div class="title">Movie List</div>
      <div v-for="movie in movies" :key="movie">{{movie}}</div>
      <img v-if="movies.includes(`zoolander`)" :src="image_url" :key="movie" />
    </div>
  </body>
</html>


### Paste your JS code here:

// index.js
var App = {
  data: function () {
    return {
      message: "Hello from JavaScript!",
      movies: ["Requiem For A Dream", "Home Alone", "Back To The Future", "The Godfather", "The Matrix"],
      newMovie: "",
      image_url: "https://i.ibb.co/59C7PD9/zoolander.jpg",
    };
  },
  methods: {
    addMovie: function () {
      this.movies.push(this.newMovie);
      this.newMovie = "";
    },
  },
};

Vue.createApp(App).mount("#app");
