<template>
  <tr class="site">
    <td>{{ name }}</td>
    <td>{{ status }}</td>
    <td>{{ update }}</td>
    <td>{{ version }}</td>
  </tr>
</template>

<script>
export default {
  name: "QuarryThemeUpdates",
  props: ["name", "status", "update", "version"],
};
</script>

<style>
.site {
  padding: 1rem;
  border: 1px dotted #ccc;
  margin: 1rem 0;
}
</style>
