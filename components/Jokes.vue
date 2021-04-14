<template>
  <div id="jokes">
    <Joke
      v-for="joke in jokes"
      v-bind:key="joke.id"
      :id="joke.id"
      :joke="joke.joke"
    />
  </div>
</template>

<script>
// import sites from "~/data/ucsc-comm-sites.json";
import axios from "axios";
import Joke from "./Joke";
// import Joke from "~/components/Joke.vue";
// const axios = require("axios");

export default {
  name: "Jokes",
  components: {
    Joke,
  },
  data() {
    return {
      jokes: [],
    };
  },
  async created() {
    const config = {
      headers: {
        Accept: "application/json",
      },
    };

    try {
      const res = await axios.get("https://icanhazdadjoke.com/search", config);
      this.jokes = res.data.results;
      console.log(res.data);
    } catch (err) {
      console.log(err);
    }
  },
};
</script>

<style scoped>
p {
  color: #000;
}
</style>
