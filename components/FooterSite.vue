<template>
  <div class="site-footer">
    <div class="grid-container large">
      <FooterGateway />
      <FooterGlobal />
    </div>
  </div>
</template>

<script>
import FooterGateway from './FooterGateway'
import FooterGlobal from './FooterGlobal'
export default {
  name: 'FooterSite',
  components: {
    FooterGateway,
    FooterGlobal,
  },
}
</script>

<style scoped lang="scss">
.site-footer {
  position: relative;
  z-index: 2;
  background: $primary-blue;
  font-size: 0.9rem;
  &::after {
    background: linear-gradient(
      0deg,
      rgba(0, 74, 134, 1) 0%,
      rgba(0, 60, 109, 1) 100%
    );
  }

  .menu {
    &.horizontal {
      flex-direction: column;

      li {
        border-bottom: 1px solid rgba(255, 255, 255, 0.2);
      }
    }

    a {
      padding-left: 0;
      font-weight: 400;
      color: white;

      // &:first-child {

      // }

      &:hover {
        text-decoration: underline;
      }
    }
  }
}
.grid-container {
  position: relative;
  max-width: 52em;
  max-width: 75rem;
  max-width: 70em;
  padding-right: 0.625rem;
  padding-left: 0.625rem;
  margin: 0 auto;
  clear: both;
}
</style>
