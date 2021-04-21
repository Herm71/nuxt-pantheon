<template>
  <div class="table-wrapper">
    <table>
      <thead>
        <tr>
          <th>Name</th>
          <th>ID</th>
          <th>Created</th>
          <th>Framework</th>
          <th>Owner</th>
          <th>Plan name</th>
          <th>Frozen?</th>
          <th>Tags</th>
        </tr>
      </thead>
      <tbody>
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
      </tbody>
    </table>
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

<style lang="scss">
.table-wrapper {
  max-width: 1080px;
  overflow: scroll;
}

table {
  border: 1px solid #ddd;
  border-collapse: collapse;
}
td,
th {
  white-space: nowrap;
  border: 1px solid #ddd;
  padding: 20px;
}
// The heading of our table
th {
  background-color: #eee;
  position: sticky;
  top: -1px;
  z-index: 2;
  // The first cell that lives in the top left of our spreadsheet
  &:first-of-type {
    left: 0;
    z-index: 3;
  }
}

// The first column that we want to stick to the left
tbody tr td:first-of-type {
  background-color: #eee;
  position: sticky;
  left: -1px;
  z-index: 1;
}
</style>
