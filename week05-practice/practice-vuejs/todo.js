/* global Vue */

var App = {
  data: function () {
    return {
      message: "Hello Vue!",
      todoStuff: [],
    };
  },

  methods: {
    status(x) {
      if (x === false) {
        return "Completed";
      } else {
        return "Todo";
      }
    },

    loadTodos() {
      axios.get("https://jsonplaceholder.typicode.com/todos").then((response) => {
        this.todoStuff = response.data;
      });
    },
    createTodo() {
      var params = { userId: 1, title: "this is a task title", completed: false };
      axios.post("https://jsonplaceholder.typicode.com/todos", params).then((response) => {
        this.todoStuff.push(response.data);
      });
    },
  },
  beforeMount() {
    this.loadTodos();
  },
};

Vue.createApp(App).mount("#app");
