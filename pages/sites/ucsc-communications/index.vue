<template>
  <div>
    <CommunicationsUpstream />
    <CommunicationsPlugins />
    <CommunicationsThemes />
  </div>
</template>
<router>{
  name: 'ucsc-communications'
}</router>
<script>
import CommunicationsUpstream from "~/components/CommunicationsUpstream.vue";
import CommunicationsPlugins from "~/components/CommunicationsPlugins.vue";
import CommunicationsThemes from "~/components/CommunicationsThemes.vue";
export default {
  components: {
    CommunicationsUpstream,
    CommunicationsPlugins,
    CommunicationsThemes,
  },
  mounted() {
    // console.log(this.$route.fullPath);
    console.log(this.$router.options.routes);
  },
};
</script>
