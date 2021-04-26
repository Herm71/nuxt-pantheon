<template>
  <div>
    <h3>UCSC Communications Upstream Updates</h3>
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
          <CommunicationsUpstreamUpdates
            v-for="(notice, index) in commupstupdates"
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
import CommunicationsUpstreamUpdates from "./CommunicationsUpstreamUpdates";
export default {
  name: "CommunicationsUpstream",
  components: {
    CommunicationsUpstreamUpdates,
  },
  data() {
    return {
      commupstupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get(
        "../ucsc-communications-upstream-updates.json"
      );
      this.commupstupdates = res.data;
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
