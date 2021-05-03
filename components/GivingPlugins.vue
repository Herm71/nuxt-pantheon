<template>
  <div>
    <h3>UCSC Giving Plugins</h3>
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
          <GivingPluginUpdates
            v-for="(plugin, index) in givingpluginupdates"
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
import GivingPluginUpdates from "./GivingPluginUpdates";
export default {
  name: "GivingPlugins",
  components: {
    GivingPluginUpdates,
  },
  data() {
    return {
      givingpluginupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-giving-plugins.json");
      this.givingpluginupdates = res.data;
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
