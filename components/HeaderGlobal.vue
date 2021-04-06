<template>
  <div class="header-global">
    <div class="menu">
      <ul class="engagement">
        <li><a href="#">Apply</a></li>
        <li><a href="#">Engage</a></li>
        <li><a href="#">Visit</a></li>
      </ul>
      <ul class="utilities">
        <li>
          <a href="#"><span>MyUCSC</span></a>
        </li>
        <li>
          <a href="#"><span>Calendars</span></a>
        </li>
        <li>
          <a href="#"><span>Directories</span></a>
        </li>
        <li class="show-for-large search-button">
          <a
            action="#0"
            data-toggle="global-search"
            aria-expanded="false"
            aria-controls="global-search"
          >
            <i class="fas fa-search fa-small"></i> Search</a
          >
        </li>
      </ul>
    </div>
  </div>
</template>

<script>
export default {
  name: 'HeaderGlobal',
}
</script>

<style scoped lang="scss">
.header-global {
  background-color: $ucsc-primary-blue;
  display: flex;
  flex-direction: row;
  justify-content: flex-end;
  padding: 0.6rem 0;

  ul {
    margin: 0;
    padding: 0;
    display: inline;
    margin-left: 1rem;

    li {
      display: inline;
    }

    a {
      color: white;
      margin: 0 0.5rem;

      &:focus,
      &:hover,
      &:active {
        text-decoration: underline;
      }
    }

    &.engagement a {
      color: $ucsc-orange;
      border: 1px solid $ucsc-orange;
      padding: 0.35rem 0.5rem;
      text-transform: uppercase;
      font-weight: 600;
      margin: 0 0.25rem;

      &:focus,
      &:hover,
      &:active {
        background-color: $ucsc-orange;
        color: #00458c;
        text-decoration: none;
      }
    }
  }
}
</style>
