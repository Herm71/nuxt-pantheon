<template>
  <tr class="site">
    <td>{{ site }}</td>
    <td>{{ datetime }}</td>
    <td>{{ message }}</td>
    <td>{{ author }}</td>
  </tr>
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
