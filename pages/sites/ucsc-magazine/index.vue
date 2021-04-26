<template>
  <div>
    <MagazineUpstream />
    <MagazinePlugins />
    <MagazineThemes />
  </div>
</template>

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
};
</script>
