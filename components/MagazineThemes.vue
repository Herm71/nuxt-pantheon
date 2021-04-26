<template>
  <div>
    <h3>UCSC Magazine Themes</h3>
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
          <MagazineThemeUpdates
            v-for="(theme, index) in magthemeupdates"
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
import MagazineThemeUpdates from "./MagazineThemeUpdates";
export default {
  name: "MagazineThemes",
  components: {
    MagazineThemeUpdates,
  },
  data() {
    return {
      magthemeupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-magazine-themes.json");
      this.magthemeupdates = res.data;
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
