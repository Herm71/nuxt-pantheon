<template>
  <p>Hello World</p>
</template>

<script>
import sites from "~/static/ucsc-comm-sites.json";

export default {
  name: "NewComponent",
  // data: () => ({
  //   ucscPantheonSites: []
  // });
  asyncData({ params }) {
    return { sites };
  },
  // async created () {
  //   this.ucscPantheonSites = await getUCSCPantheonSites();
  // }
};
</script>

<style scoped>
</style>
