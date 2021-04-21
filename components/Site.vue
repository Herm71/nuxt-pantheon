<template>
  <tr>
    <td>{{ name }}</td>
    <td>{{ id }}</td>
    <td>{{ created }}</td>
    <td>{{ framework }}</td>
    <td>{{ owner }}</td>
    <td>{{ planName }}</td>
    <td>{{ frozen }}</td>
    <td>tags placeholder</td>
  </tr>
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
