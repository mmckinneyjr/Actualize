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
