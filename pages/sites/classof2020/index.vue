<template>
  <div>
    <MagazineUpstream />
    <MagazinePlugins />
    <MagazineThemes />
  </div>
</template>
<router>{
  name: 'classof2020'
}</router>
<script>
import MagazineUpstream from "~/components/MagazineUpstream.vue";
import MagazinePlugins from "~/components/MagazinePlugins.vue";
import MagazineThemes from "~/components/MagazineThemes.vue";
export default {
  components: {
    MagazineUpstream,
    MagazinePlugins,
    MagazineThemes,
  },
  mounted() {
    // console.log(this.$route.fullPath);
    console.log(this.$router.options.routes);
  },
};
</script>
