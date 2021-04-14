<template>
  <div id="sites" class="sites grid bg-orange-600">
    <p class="grid-head grid-cell">ID</p>
    <p class="grid-head grid-cell">Name</p>
    <p class="grid-head grid-cell">Created</p>
    <p class="grid-head grid-cell">Framework</p>
    <p class="grid-head grid-cell">Owner</p>
    <p class="grid-head grid-cell">Plan name</p>
    <p class="grid-head grid-cell">Frozen?</p>
    <p class="grid-head grid-cell">Tags</p>
    <Site
      v-for="(site, index) in sites"
      :id="site.id"
      :name="site.name"
      :created="site.created"
      :framework="site.framework"
      :owner="site.owner"
      :planName="site.plan_name"
      :frozen="site.frozen"
      :tags="site.tags"
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

<style>
.grid {
  display: grid;
  grid-template-columns: repeat(8, 1fr);
}
</style>
