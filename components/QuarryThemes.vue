<template>
  <div>
    <h3>UCSC Quarry Themes</h3>
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
          <QuarryThemeUpdates
            v-for="(theme, index) in quarrythemeupdates"
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
import QuarryThemeUpdates from "./QuarryThemeUpdates";
export default {
  name: "QuarryThemes",
  components: {
    QuarryThemeUpdates,
  },
  data() {
    return {
      quarrythemeupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-quarry-themes.json");
      this.quarrythemeupdates = res.data;
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
