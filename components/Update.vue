<template>
  <div class="site">
    <p>{{ id }}</p>
    <p>{{ site }}</p>
    <p>{{ datetime }}</p>
    <p>{{ message }}</p>
    <p>{{ author }}</p>
  </div>
</template>

<script>
export default {
  name: "Update",
  props: ["site", "id", "datetime", "message", "author"],
};
</script>

<style>
.site {
  padding: 1rem;
  border: 1px dotted #ccc;
  margin: 1rem 0;
}
</style>
