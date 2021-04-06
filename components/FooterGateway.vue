<template>
  <div class="gateway-footer">
    <div class="hide-for-large">
      <div
        class="grid-x grid-margin-x grid-padding-x large-padding-collapse large-margin-collapse"
      >
        <div class="large-12 small-order-2 cell">
          <img
            class="white-ucsc-logo"
            src="~/assets/images/uc-santa-cruz-reverse.svg"
          />
          <p class="address">1156 High Street, Santa Cruz, CA 95064</p>
        </div>
      </div>
    </div>
    <!-- {{> nav-footer-block }} -->
  </div>
</template>

<script>
export default {
  name: 'FooterGateway',
}
</script>

<style scoped lang="scss">
.gateway-footer {
  color: $white;
  padding: 2em 0 0;
  margin-bottom: 0;
  .white-ucsc-logo {
    max-width: 140px;
    margin-bottom: 10px;
  }
}
</style>
