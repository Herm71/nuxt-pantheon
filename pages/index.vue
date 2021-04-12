<template>
  <div class="container">
    <div>
      <HeaderGlobal />
      <h1 class="title">UCSC Pantheon Updates</h1>

      <Pantheon />
    </div>
  </div>
</template>

<script>
import HeaderGlobal from "~/components/HeaderGlobal.vue";
import Pantheon from "~/components/Pantheon.vue";
export default {
  components: { HeaderGlobal, Pantheon },
};
</script>

<style>
/* Sample `apply` at-rules with Tailwind CSS
.container {
@apply min-h-screen flex justify-center items-center text-center mx-auto;
}
*/
.container {
  margin: 0 auto;
  min-height: 100vh;
}
</style>
