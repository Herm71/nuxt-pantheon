<template>
  <div>
    <h3>UCSC Pbsci Upstream Updates</h3>
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
          <PbsciUpstreamUpdates
            v-for="(notice, index) in pbsciupstupdates"
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
import PbsciUpstreamUpdates from "./PbsciUpstreamUpdates";
export default {
  name: "PbsciUpstream",
  components: {
    PbsciUpstreamUpdates,
  },
  data() {
    return {
      pbsciupstupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-pbsci-upstream-updates.json");
      this.pbsciupstupdates = res.data;
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
