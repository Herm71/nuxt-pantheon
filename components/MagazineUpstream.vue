<template>
  <div>
    <h3>UCSC Magazine Upstream Updates</h3>
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
          <MagazineUpstreamUpdates
            v-for="(notice, index) in magupstupdates"
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
import MagazineUpstreamUpdates from "./MagazineUpstreamUpdates";
export default {
  name: "MagazineUpstream",
  components: {
    MagazineUpstreamUpdates,
  },
  data() {
    return {
      magupstupdates: [],
    };
  },
  async created() {
    try {
      const res = await axios.get("../ucsc-magazine-upstream-updates.json");
      this.magupstupdates = res.data;
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
