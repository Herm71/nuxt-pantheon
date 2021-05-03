<template>
  <div>
    <h3>UCSC Quarry Upstream Updates</h3>
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
          <QuarryUpstreamUpdates
            v-for="(notice, index) in quarryupstupdates"
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
import QuarryUpstreamUpdates from "./QuarryUpstreamUpdates";
export default {
  name: "QuarryUpstream",
  components: {
    QuarryUpstreamUpdates,
  },
  data() {
    return {
      quarryupstupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-quarry-upstream-updates.json");
      this.quarryupstupdates = res.data;
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
