<template>
  <div>
    <h3>UCSC Pbsci Themes</h3>
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
          <PbsciThemeUpdates
            v-for="(theme, index) in pbscithemeupdates"
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
import PbsciThemeUpdates from "./PbsciThemeUpdates";
export default {
  name: "PbsciThemes",
  components: {
    PbsciThemeUpdates,
  },
  data() {
    return {
      pbscithemeupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-pbsci-themes.json");
      this.pbscithemeupdates = res.data;
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
