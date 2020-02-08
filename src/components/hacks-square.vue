<template>
  <section class="hacks-square">
    <img class="hacks-square__image" :src="source" />
    <slot />
  </section>
</template>

<script>
export default {
  name: "hacks-square",
  props: {
    source: {
      type: String,
      required: true,
      default: null,
    },
  },
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-square {
  &__image {
    width: 200px;
    height: 200px;
    object-fit: cover;
    border-radius: 10%;
    filter: grayscale(100%);

    &:hover,
    &:focus {
      @keyframes movein {
        from {
          filter: grayscale(100%);
        }
        to {
          filter: grayscale(0%);
        }
      }

      @include animation-fast(movein);
      filter: grayscale(0%);
    }
  }
}
</style>
