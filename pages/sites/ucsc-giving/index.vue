<template>
  <div>
    <GivingUpstream />
    <GivingPlugins />
    <GivingThemes />
  </div>
</template>
<router>{
  name: 'ucsc-giving'
}</router>
<script>
import GivingUpstream from "~/components/GivingUpstream.vue";
import GivingPlugins from "~/components/GivingPlugins.vue";
import GivingThemes from "~/components/GivingThemes.vue";
export default {
  components: {
    GivingUpstream,
    GivingPlugins,
    GivingThemes,
  },
  mounted() {
    // console.log(this.$route.fullPath);
    console.log(this.$router.options.routes);
  },
};
</script>
