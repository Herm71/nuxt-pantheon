<template>
  <div>
    <h3>UCSC Giving Upstream Updates</h3>
    <div class="table-wrapper">
      <table>
        <thead>
          <tr>
            <th>Hash</th>
            <th>dateTime</th>
            <th>Message</th>
            <th>Author</th>
          </tr>
        </thead>
        <tbody>
          <GivingUpstreamUpdates
            v-for="(notice, index) in givingupstupdates"
            :hash="notice.hash"
            :datetime="notice.datetime"
            :message="notice.message"
            :author="notice.author"
            :key="index"
          />
        </tbody>
      </table>
    </div>
  </div>
</template>
<script>
import axios from "axios";
import GivingUpstreamUpdates from "./GivingUpstreamUpdates";
export default {
  name: "GivingUpstream",
  components: {
    GivingUpstreamUpdates,
  },
  data() {
    return {
      givingupstupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-giving-upstream-updates.json");
      this.givingupstupdates = res.data;
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
