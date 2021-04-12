<template>
  <div id="sites">
    <div class="productsItemContainer">
      <div class="productsItem">
        <p></p>
      </div>
    </div>
  </div>
</template>

<script>
// import sites from "~/data/ucsc-comm-sites.json";
// import axios from "axios";
const axios = require("axios");

export default {
  name: "Pantheon",
  // axios.get("~/data/ucsc-comm-sites.json")
  //   .then(function(response){
  //     console.log(response);
  //   })
  //   .catch(function(error){
  //     console.log(error);
  //   })
  //   .then(function (){

  //   });
  // First try without errors
  // data() {
  //   return {
  //     id: this.$route.params.id,
  //   };
  // },

  // mounted() {
  //   axios
  //     .get("~/data/ucsc-comm-sites.json")
  //     .then((response) => {
  //       this.sites = response.data.sites;
  //     })
  //     .catch((error) => {
  //       throw error.response.data.sites;
  //     });
  // },
  // async asyncData({ params, $axios }) {
  //   // let response = await $axios.$get('http://localhost:3000/ucsc-comm-sites.json')
  //   const response = await $axios.$get(
  //     "https://jsonplaceholder.typicode.com/${params.id}"
  //   );
  //   return { post: response.data };
  //   console.log(response);
  // },
  asyncData({ params }) {
    return {
      sites,
    };
  },
};
</script>

<style scoped>
p {
  color: white;
}
</style>
