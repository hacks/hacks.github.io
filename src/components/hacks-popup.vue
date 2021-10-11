<template>
  <section class="hacks-popup">
    <div class="hacks-popup__wrapper" @mouseover="hoverEvent(true)" @mouseleave="hoverEvent(false)">
      <span v-if="showPopup" :class="'hacks-popup__' + direction">
        <slot name="label" />
      </span>
      <slot name="content" />
    </div>
  </section>
</template>

<script>
export default {
  name: "hacks-popup",
  props: {
    /**
     * Indicated the direction the pop-up is displaying.
     */
    direction: {
      type: String,
      required: true,
      default: "bottom"
    }
  },
  data() {
    return {
      showPopup: false
    };
  },
  methods: {
    /**
     * Displays popup based on mouse activity.
     */
    hoverEvent(state) {
      this.showPopup = state;
    }
  }
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-popup {
  max-width: fit-content;
  &__wrapper {
    position: relative;
    display: inline-block;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  &__bottom {
    @extend %fade-in-fast;
    @include animation-slide-bottom(-100%, -70%);
    text-transform: capitalize;
    width: 160px;
    background-color: black;
    color: white;
    text-align: center;
    border-radius: 6px;
    position: absolute;
    z-index: 1;
    bottom: -70%;
    left: 50%;
    margin-left: -80px;
    max-height: fit-content;

    &::before {
      content: "";
      position: absolute;
      bottom: 100%;
      left: 50%;
      margin-left: -5px;
      border-width: 10px;
      border-style: solid;
      border-color: black transparent transparent transparent;
      transform: rotate(180deg);
    }
  }
}
</style>