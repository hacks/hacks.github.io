<template>
  <div class="hacks-nav">
    <div class="hacks-nav__container" v-if="!isMobile">
      <router-link v-for="r in routes" :key="r.path" :to="r.path">{{ r.name }}</router-link>
    </div>

    <div class="hacks-nav__button" v-if="isMobile" @click="menuOpen = !menuOpen">
      <h2>≡</h2>
    </div>

    <hacks-modal v-if="menuOpen" @close-modal="closeModal()" dark-mode>
      <ul class="hacks-nav__mobile-menu">
        <li @click="menuOpen = !menuOpen">
          <router-link to="/">home</router-link>
        </li>
        <li @click="menuOpen = !menuOpen">
          <router-link to="/about">about</router-link>
        </li>
        <li @click="menuOpen = !menuOpen">
          <router-link to="/eboard">ebo</router-link>
        </li>
        <li @click="menuOpen = !menuOpen">
          <router-link to="/members">members</router-link>
        </li>
        <li @click="menuOpen = !menuOpen">
          <router-link to="/conduct">code</router-link>
        </li>
      </ul>
    </hacks-modal>
  </div>
</template>

<script>
import HacksModal from "./hacks-modal";
import { routes } from "../router";

export default {
  name: "hacks-nav",
  components: {
    HacksModal
  },
  props: {
    isMobile: {
      type: Boolean,
      required: true,
      default: false
    }
  },
  data() {
    return {
      menuOpen: false,
      routes: routes
    };
  },
  methods: {
    closeModal() {
      this.menuOpen = !menuOpen;
    }
  }
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-nav {
  font-variant: small-caps;
  text-transform: lowercase;
  font-weight: lighter;
  width: $hacks-page-width;
  display: block;
  margin: auto;

  @media (max-width: $hacks-page-width) {
    display: unset;
  }

  &__button {
    line-height: 48px;
    cursor: pointer;

    h2 {
      margin: unset;
      text-align: right;
      font-size: 108px !important;
    }
  }

  &__mobile-menu {
    @include animation-slide-top();
    @include animation-fast(slidein);
    list-style-type: none;
    display: block;
    margin: 15vh auto;
    font-size: 72px;
  }

  a {
    position: relative;
    text-decoration: none;
    font-weight: 900;
    size: 14px !important;
    color: $hacks-nav-inactive-color;
    font-size: $hacks-h2;
    padding: 0.5em 1em;

    &.router-link-exact-active {
      color: $hacks-nav-active-color;
    }

    &:hover,
    &:focus {
      &:not(.router-link-exact-active) {
        @keyframes focusin {
          from {
            text-shadow: 3px 3px rgba($color: red, $alpha: 0.4),
              -3px -3px rgba($color: cyan, $alpha: 0.4);
          }
          to {
            text-shadow: unset;
            color: rgba($color: white, $alpha: 0.7);
          }
        }
        @include animation-fast(focusin);
        color: rgba($color: white, $alpha: 0.7);
      }
    }
  }

  &__container {
    display: flex;
    flex-wrap: wrap;
    align-items: baseline;
    max-width: fit-content;
    margin-top: 1em;

    :nth-child(1) {
      padding-left: unset;
    }
  }
}
</style>
