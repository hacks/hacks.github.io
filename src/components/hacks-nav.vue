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
  width: $hacks-page-width;
  display: block;
  margin: auto;

  &__button {
    line-height: 48px;
    cursor: pointer;
    display: block;
    width: 100vw;
    top: 0;
    right: 0;

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
    margin: unset;
    margin-top: 1em;

    :nth-child(1) {
      padding-left: unset;
    }
  }
}
</style>
