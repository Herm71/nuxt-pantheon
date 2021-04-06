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
  name: "HeaderGlobal",
};
</script>

<style scoped>
</style>
