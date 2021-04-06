
<template>
  <div class="container">
    <div>
      <!-- <HeaderGlobal /> -->
      <h1 class="title">UCSC Pantheon Updates</h1>

      <NewComponent />
    </div>
  </div>
</template>

<script>
// import HeaderGlobal from "~/components/HeaderGlobal.vue";
import NewComponent from "~/components/NewComponent.vue";

export default {
  components: { NewComponent },
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

/* .container {
  @apply min-h-screen flex justify-center items-center text-center mx-auto;
} */
</style>
