<template>
  <div class="hacks-nav">
    <div class="hacks-nav__container" v-if="!isMobile">
      <router-link v-for="r in routes" :key="r.path" :to="r.path">{{
        r.name
      }}</router-link>
    </div>

    <div
      class="hacks-nav__button"
      v-if="isMobile"
      @click="menuOpen = !menuOpen"
    >
      <h2>≡</h2>
    </div>

    <hacks-modal v-if="menuOpen" @close-modal="closeModal()" dark-mode>
      <ul class="hacks-nav__mobile-menu">
        <li v-for="r in routes" :key="r.path" @click="menuOpen = !menuOpen">
          <router-link :to="r.path">
            <span class="hacks-small-caps">{{ r.name }}</span>
          </router-link>
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
    HacksModal,
  },
  props: {
    isMobile: {
      type: Boolean,
      required: true,
      default: false,
    },
  },
  data() {
    return {
      menuOpen: false,
      routes: routes,
    };
  },
  methods: {
    closeModal() {
      this.menuOpen = !this.menuOpen;
    },
  },
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-nav {
  font-variant: small-caps;
  text-transform: lowercase;
  font-weight: lighter;
  display: block;
  margin: auto;
  width: fit-content;

  &__button {
    cursor: pointer;
    display: block;
    width: 100vw;
    line-height: 3em;
    top: 0;
    right: 0;

    h2 {
      margin: unset;
      text-align: right;
      padding-right: 0.1em;
      font-size: $hacks-hamburger-size;
    }
  }

  &__mobile-menu {
    @include animation-slide-top();
    @include animation-fast(slidein);
    list-style-type: none;
    display: block;
    margin: 15vh auto;
    font-size: $hacks-mobile-menu-text;

    > li {
      padding: 1em 0;
    }
  }

  a {
    position: relative;
    text-decoration: none;
    font-weight: 900;
    color: $hacks-nav-inactive-color !important;
    font-size: $hacks-h2;
    padding: 0.5em;

    &.router-link-exact-active {
      color: $hacks-nav-active-color !important;
    }

    &:hover,
    &:focus {
      &:not(.router-link-exact-active) {
        @keyframes focusin {
          from {
            text-shadow: $hacks-three-dee;
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
    width: $hacks-page-width;
    align-items: baseline;
    margin: unset;
    margin-top: 1em;

    @media (max-width: $hacks-page-width) {
      width: 80vw;
    }

    :nth-child(1) {
      padding-left: unset;
    }
  }
}
</style>
