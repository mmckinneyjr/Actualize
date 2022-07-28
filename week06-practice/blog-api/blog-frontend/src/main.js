import { createApp } from "vue";
import App from "./App.vue";
import router from "./router";

import axios from "axios";
axios.defaults.baseURL = process.env.NODE_ENV === "development" ? "http://localhost:3000" : "/";

createApp(App).use(router).mount("#app");

var jwt = localStorage.getItem("jwt");
if (jwt) {
  axios.defaults.headers.common["Authorization"] = `Bearer ${jwt}`;
}

import Vue from "vue";
import moment from "moment";

Vue.config.productionTip = false;
Vue.filter("formatDate", function (value) {
  if (value) {
    return moment(String(value)).format("MM/DD/YYYY hh:mm");
  }
});

new Vue({
  render: (h) => h(App),
}).$mount("#app");
