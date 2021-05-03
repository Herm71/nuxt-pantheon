<template>
  <div>
    <PbsciUpstream />
    <PbsciPlugins />
    <PbsciThemes />
  </div>
</template>
<router>{
  name: 'ucsc-pbsci'
}</router>
<script>
import PbsciUpstream from "~/components/PbsciUpstream.vue";
import PbsciPlugins from "~/components/PbsciPlugins.vue";
import PbsciThemes from "~/components/PbsciThemes.vue";
export default {
  components: {
    PbsciUpstream,
    PbsciPlugins,
    PbsciThemes,
  },
  mounted() {
    // console.log(this.$route.fullPath);
    console.log(this.$router.options.routes);
  },
};
</script>
