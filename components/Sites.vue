<template>
  <div id="sites">
    <Site
      v-for="(site, index) in sites"
      :id="site.id"
      :name="site.name"
      :created="site.created"
      :framework="site.framework"
      :owner="site.owner"
      :planName="site.plan_name"
      :key="index"
    />
  </div>
</template>

<script>
import axios from "axios";
import Site from "./Site";
export default {
  name: "Sites",
  components: {
    Site,
  },
  data() {
    return {
      sites: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("ucsc-comm-sites.json");
      this.sites = res.data;
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
