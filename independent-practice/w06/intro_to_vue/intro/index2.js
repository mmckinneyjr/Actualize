/* global Vue */

var App = {
  data: function () {
    return {
      message: "Hello from JavaScript!",
      movies: [],
      newMovieParams: {},
    };
  },
  created: function () {
    this.showMovies();
  },
  methods: {
    showMovies: function () {
      axios.get("http://localhost:3000/movies").then((response) => {
        this.movies = response.data;
        console.log("All movies: ", this.movies);
      });
    },
    createMovie: function () {
      axios.post("http://localhost:3000/movies", this.newMovieParams).then((response) => {
        console.log("Movie added", response.data);
        this.newMovieParams = {};
        this.movies.push(response.data);
      });
    },
  },
};

Vue.createApp(App).mount("#app");
