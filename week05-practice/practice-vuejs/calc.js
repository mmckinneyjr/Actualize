var App = {
  data: function () {
    return {
      message: "Hello World",
      num1: 0,
      num2: 0,
      num3: 0,
      sum: 0,
      multiple: 0,
      stuff: ["bike", "chair", "car", "food", "phone"],
      item: "",
    };
  },
  methods: {
    sumFunc: function () {
      this.sum = parseInt(this.num1) + parseInt(this.num2) + parseInt(this.num3);
      return this.sum;
    },
    mutiplyFunc: function () {
      this.multiple = parseInt(this.num1) * parseInt(this.num2) * parseInt(this.num3);
    },

    addStuff: function () {
      this.stuff.push(this.item);
      this.item = "";
    },
  },
};

Vue.createApp(App).mount("#app");
