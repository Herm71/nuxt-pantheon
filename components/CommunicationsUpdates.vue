<template>
  <div>
    <h3>UCSC Communications Updates</h3>
    <h4>Plugins</h4>
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
          <CommunicationsPluginUpdates
            v-for="(plugin, index) in commpluginupdates"
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
import CommunicationsPluginUpdates from "./CommunicationsPluginUpdates";
export default {
  name: "CommunicationsUpdates",
  components: {
    CommunicationsPluginUpdates,
  },
  data() {
    return {
      commpluginupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-communications-plugins.json");
      this.commpluginupdates = res.data;
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
