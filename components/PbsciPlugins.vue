<template>
  <div>
    <h3>UCSC Pbsci Plugins</h3>
    <div class="table-wrapper">
      <table>
        <thead>
          <tr>
            <th>Name</th>
            <th>Status</th>
            <th>Update</th>
            <th>Version</th>
          </tr>
        </thead>
        <tbody>
          <PbsciPluginUpdates
            v-for="(plugin, index) in pbscipluginupdates"
            :name="plugin.name"
            :status="plugin.status"
            :update="plugin.update"
            :version="plugin.version"
            :key="index"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import PbsciPluginUpdates from "./PbsciPluginUpdates";
export default {
  name: "PbsciPlugins",
  components: {
    PbsciPluginUpdates,
  },
  data() {
    return {
      pbscipluginupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-pbsci-plugins.json");
      this.pbscipluginupdates = res.data;
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
