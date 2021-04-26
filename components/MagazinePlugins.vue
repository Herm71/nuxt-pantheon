<template>
  <div>
    <h3>UCSC Magazine Plugins</h3>
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
          <MagazinePluginUpdates
            v-for="(plugin, index) in magpluginupdates"
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
import MagazinePluginUpdates from "./MagazinePluginUpdates";
export default {
  name: "MagazinePlugins",
  components: {
    MagazinePluginUpdates,
  },
  data() {
    return {
      magpluginupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-magazine-plugins.json");
      this.magpluginupdates = res.data;
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
