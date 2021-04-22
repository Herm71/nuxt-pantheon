<template>
  <Sites />
</template>

<script>
import Sites from "~/components/Sites.vue";
export default {
  head() {
    return {
      title: "UCSC Pantheon Updates",
      meta: [
        {
          hid: "description",
          name: "description",
          content: "UCSC Pantheon Updates",
        },
      ],
    };
  },
  components: { Sites },
};
</script>

