<template>
  <nav>
    <router-link to="/">Home</router-link>
    |
    <router-link to="/posts">Posts</router-link>
    |
    <router-link to="/posts-new">New Post</router-link>
    |
    <router-link to="/about">About</router-link>
    |
    <router-link to="/test">Test</router-link>
    |
    <router-link to="/signup">SignUp</router-link>
    |
    <router-link to="/login">Login</router-link>
    |
    <router-link to="/logout">LogOut</router-link>
  </nav>
  <router-view />
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
}

nav {
  padding: 30px;
}

nav a {
  font-weight: bold;
  color: #2c3e50;
}

nav a.router-link-exact-active {
  color: #42b983;
}

.image {
  border-radius: 200px;
  background: #73ad21;
  padding: 20px;
  width: 300px;
  height: 100%;
  box-shadow: 9px 8px 19px rgba(0, 0, 0, 1);
  -webkit-box-shadow: 9px 8px 19px rgba(0, 0, 0, 1);
  -moz-box-shadow: 9px 8px 19px rgba(0, 0, 0, 1);
  animation: wiggle 2s linear infinite;
}

/* Keyframes */
@keyframes wiggle {
  0%,
  7% {
    transform: rotateZ(0);
  }
  15% {
    transform: rotateZ(-15deg);
  }
  20% {
    transform: rotateZ(10deg);
  }
  25% {
    transform: rotateZ(-10deg);
  }
  30% {
    transform: rotateZ(6deg);
  }
  35% {
    transform: rotateZ(-4deg);
  }
  40%,
  100% {
    transform: rotateZ(0);
  }
}
</style>
