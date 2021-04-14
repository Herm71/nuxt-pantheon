<template>
  <div id="updates">
    <Update
      v-for="(update, index) in updates"
      :id="update.id"
      :site="update.site"
      :message="update.message"
      :datetime="update.datetime"
      :author="update.author"
      :key="index"
    />
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
      const res = await axios.get("site-updates.json");
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
