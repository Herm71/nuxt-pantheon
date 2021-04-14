<template>
  <div class="site">
    <p>{{ id }}</p>
    <p>{{ name }}</p>
    <p>{{ created }}</p>
    <p>{{ framework }}</p>
    <p>{{ owner }}</p>
    <p>{{ planName }}</p>
  </div>
</template>

<script>
export default {
  name: "Site",
  props: ["name", "id", "created", "framework", "owner", "planName"],
};
</script>

<style>
.site {
  padding: 1rem;
  border: 1px dotted #ccc;
  margin: 1rem 0;
}
</style>
