<template>
  <div class="container">
    <div>
      <HeaderGlobal />
      <h1 class="title">UCSC Design System</h1>

      <FooterSite />
    </div>
  </div>
</template>

<script>
import HeaderGlobal from '~/components/HeaderGlobal.vue'
import FooterSite from '~/components/FooterSite.vue'

export default {
  components: { HeaderGlobal, FooterSite },
}
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
