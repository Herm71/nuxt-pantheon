<template>
  <div>
    <h3>UCSC Giving Themes</h3>
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
          <GivingThemeUpdates
            v-for="(theme, index) in givingthemeupdates"
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
import GivingThemeUpdates from "./GivingThemeUpdates";
export default {
  name: "GivingThemes",
  components: {
    GivingThemeUpdates,
  },
  data() {
    return {
      givingthemeupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-giving-themes.json");
      this.givingthemeupdates = res.data;
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
