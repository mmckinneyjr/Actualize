# Intro to VueJS

[Vue.js](https://vuejs.org/) is a front end framework created by Evan You. It has become increasingly popular in the last few years for being both easy to get started and powerful enough to build complex applications.

We're going to practice the basic building blocks of Vue, but know there is limitless potential to what you can actually use it for!

### Exercise

Start with a blank html file with Vue imported (you can make this directory and files in your actualize folder):

```xml

<!-- index.html -->
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Practice Vue.js</title>
  <script src="https://unpkg.com/vue@next"></script>
  <script src="index.js" defer></script>
</head>
<body>
  <h1>Hello from HTML!</h1>
  <div id="app">
    <h1>{{ message }}</h1>
  </div>
</body>
</html>
```

```js
// index.js
var App = new Vue({
  data: function () {
    return {
      message: "Hello from JavaScript!"
    };
  }
});

Vue.createApp(App).mount("#app");
```

1. Add a data attribute called `movies`, make it an array, and put in some of your favorite movies as strings (hardcoded!).
2. Use handlebars (`{{}}`) to display your movies in the HTML.
3. Use a `v-for` in the HTML to show each movie as it's own `<p>` element.
4. Add an `input` and a `button` element in the HTML to add a new movie. Make sure to attach a `v-model` attribute to the input element, and a `v-on:click` attribute to the button element. Have the v-on:click run a function in the javascript `methods` object that adds the new movie to the movies array. Remember - you'll need to use the `this` keyword to access the movies array in the javascript outside of the data object.

Bonus: Add this image tag to the page: `<img src="https://i.ibb.co/59C7PD9/zoolander.jpg">`. Add a `v-if` conditional attribute to the img tag and have it only show the image if the movie "Zoolander" is in your movies array. Hint: look up the javascript `.includes()` method.
Double bonus: Attempt to make a web request to get movies from your ACTUAL movies backend app!

#### Deliverable

Go to the intro_to_vue_solution.md file in this folder and follow the instructions! Once you've completed the assignment, do this in the independent practice repository:

```bash
$ git add --all
$ git commit -m "your commit message goes here"
$ git push origin YOUR-GITHUB-USERNAME-GOES-HERE
```
