<template>
  <tr class="site">
    <td>{{ hash }}</td>
    <td>{{ datetime }}</td>
    <td>{{ message }}</td>
    <td>{{ author }}</td>
  </tr>
</template>

<script>
export default {
  name: "QuarryUpstreamUpdates",
  props: ["hash", "datetime", "message", "author"],
};
</script>

<style>
.site {
  padding: 1rem;
  border: 1px dotted #ccc;
  margin: 1rem 0;
}
</style>
