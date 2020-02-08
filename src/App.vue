<template>
  <div id="app">
    <Page />
  </div>
</template>

<script>
import Page from "./views/Page.vue";

export default {
  name: "App",
  components: {
    Page
  }
};
</script>

<style lang="scss">
#app {
  font-family: Avenir, sans-serif;
}
</style>
