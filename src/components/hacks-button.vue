<template>
  <div class="hacks-button">
    <a class="hacks-button__row" v-if="link" :href="link" target="_blank">
      <slot />
    </a>
    <div class="hacks-button__row" v-else>
      <slot />
    </div>
  </div>
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

  &__row {
    display: flex;
    flex-flow: row wrap;
    justify-content: space-around;

    > img,
    > h3 {
      margin: 0 5px;
    }
  }

  a {
    text-decoration: none;
    color: black;
  }

  &:hover,
  &:focus {
    background-color: $hacks-nav-active-color;
  }
}
</style>
