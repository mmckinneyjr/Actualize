/* global Vue */

var App = {
  data: function () {
    return {
      message: "Hello Vue!",
      products: [],
    };
  },

  methods: {
    getAll() {
      axios.get("http://localhost:3000/products.json").then((response) => {
        this.products = response.data;
      });
    },
  },
  beforeMount() {
    this.getAll();
  },
};

Vue.createApp(App).mount("#app");
