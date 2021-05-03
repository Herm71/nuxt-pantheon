<template>
  <div>
    <QuarryUpstream />
    <QuarryPlugins />
    <QuarryThemes />
  </div>
</template>
<router>{
  name: 'ucsc-quarry'
}</router>
<script>
import QuarryUpstream from "~/components/QuarryUpstream.vue";
import QuarryPlugins from "~/components/QuarryPlugins.vue";
import QuarryThemes from "~/components/QuarryThemes.vue";
export default {
  components: {
    QuarryUpstream,
    QuarryPlugins,
    QuarryThemes,
  },
  mounted() {
    // console.log(this.$route.fullPath);
    console.log(this.$router.options.routes);
  },
};
</script>
