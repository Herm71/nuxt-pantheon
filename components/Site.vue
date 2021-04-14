<template>
  <div class="grid">
    <p>ID: {{ id }}</p>
    <p>Name: {{ name }}</p>
    <p>Created: {{ created }}</p>
    <p>Framework: {{ framework }}</p>
    <p>Owner: {{ owner }}</p>
    <p>Plan name: {{ planName }}</p>
    <p>Frozen? {{ frozen }}</p>
    <p>Tags: tags</p>
  </div>
</template>

<script>
export default {
  name: "Site",
  props: [
    "name",
    "id",
    "created",
    "framework",
    "owner",
    "planName",
    "frozen",
    "tags",
  ],
};
</script>

<style>
.site {
  padding: 1rem;
  border: 1px dotted #ccc;
  margin: 1rem 0;
}
</style>
