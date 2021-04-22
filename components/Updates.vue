<template>
  <div>
    <h3>UCSC Communications & Marketing Pantheon Sites</h3>
    <div class="table-wrapper">
      <table>
        <thead>
          <tr>
            <th>Site</th>
            <th>DateTime</th>
            <th>Message</th>
            <th>Author</th>
          </tr>
        </thead>
        <tbody>
          <Update
            v-for="(update, index) in updates"
            :id="update.id"
            :site="update.site"
            :message="update.message"
            :datetime="update.datetime"
            :author="update.author"
            :key="index"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import Update from "./Update";
export default {
  name: "Updates",
  components: {
    Update,
  },
  data() {
    return {
      updates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("list-updates.json");
      this.updates = res.data;
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
