/* global Vue */

var App = {
  data: function () {
    return {
      myMessage: "Hello from JavaScript!",
      name: "blank",
      toggle: 0,
      showInfo: false,
    };
  },
  methods: {
    reverseMessage() {
      this.myMessage = this.myMessage.split("").reverse().join("");
    },
    changeMessage() {
      if (toggle == 0) {
        this.myMessage = "This is a new message";
        toggle = 1;
      } else if (toggle == 1) {
        this.myMessage = "Message Changed back";
        toggle = 0;
      }
    },
  },
};

Vue.createApp(App).mount("#app");
