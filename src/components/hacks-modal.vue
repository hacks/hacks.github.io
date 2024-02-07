<template>
  <div class="hacks-modal">
    <div
      class="hacks-modal__content"
    >
      <span @click.prevent="closeModal()" class="hacks-modal__close">&times;</span>
      <slot />
    </div>
  </div>
</template>

<script>
export default {
  name: "hacks-modal",
  methods: {
    /**
     * Emits an event to the parent component to close the modal.
     */
    closeModal() {
      this.$emit("close-modal");
    }
  },
  created() {
    document.body.style.position = "fixed";
    document.body.style.overflow = "hidden";
    document.body.style.width = "100vw";
  },
  unmounted() {
    const scrollY = document.body.style.top;
    document.body.style.position = "";
    document.body.style.overflow = "auto";
    window.scrollTo(0, parseInt(scrollY || "0") * -1);
  }
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-modal {
  @include animation-slide-top();
  @include animation-fast(slidein);
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 5vh; /* Location of the box */
  left: 0;
  top: 0;
  width: 100vw; /* Full width */
  height: 100vh;
  background-color: rgb(0, 0, 0); /* Fallback color */
  background-color: rgba(0, 0, 0, 0.5); /* Black w/ opacity */
  overflow-y: auto;

  @media (max-width: 1000px) {
    padding-top: unset;
  }

  &__content {
    margin: auto;
    width: 65vw;
    border-radius: 10px;
    padding: 1em 1em 2.5em 0;
    margin-bottom: 10vh;
    color: black;
    background-color: $hacks-nav-inactive-color;

    @media (max-width: 1000px) {
      width: 100vw;
      height: 100vh;
      margin-bottom: unset;
      border-radius: unset;
    }
  }

  &__close {
    color: $hacks-a;
    font-size: 2em;
    font-weight: bold;
    float: right;
    padding-right: 10px;

    &:hover,
    &:focus {
      transition: color 1s;
      color: $hacks-a-hover;
      text-decoration: none;
      cursor: pointer;
    }
  }
}
</style>
