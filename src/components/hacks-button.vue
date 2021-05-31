<template>
  <a class="hacks-button" :href="link" target="_blank">
    <slot />
  </a>
</template>

<script>
export default {
  name: "hacks-button",
  props: {
    /**
     * The link that the button will redirect to
     *
     * @type {String}
     */
    link: {
      type: String,
      default: null
    }
  }
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-button {
  background-color: $hacks-nav-inactive-color;
  border-radius: 25px;
  margin: 0.5em;
  height: fit-content;
  padding: 15px;
  transition: background-color 1s;

  display: flex;
  flex-flow: row wrap;
  justify-content: space-around;

  > * {
    margin: 0 5px;
  }

  text-decoration: none;
  color: black;

  &:hover,
  &:focus {
    background-color: $hacks-nav-active-color;
  }
}
</style>
