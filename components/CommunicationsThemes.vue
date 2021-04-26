<template>
  <div>
    <h3>UCSC Communications Themes</h3>
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
          <CommunicationsThemeUpdates
            v-for="(theme, index) in commthemeupdates"
            :name="theme.name"
            :status="theme.status"
            :update="theme.update"
            :version="theme.version"
            :key="index"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import CommunicationsThemeUpdates from "./CommunicationsThemeUpdates";
export default {
  name: "CommunicationsThemes",
  components: {
    CommunicationsThemeUpdates,
  },
  data() {
    return {
      commthemeupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-communications-themes.json");
      this.commthemeupdates = res.data;
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
