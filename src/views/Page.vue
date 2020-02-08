<template>
  <section class="hacks-page">
    <github-corner :is-mobile="isMobile" :link="link" />
    <hacks-nav :is-mobile="isMobile" />
    <router-view />
  </section>
</template>

<script>
import GithubCorner from "../components/github-corner.vue";
import HacksNav from "../components/hacks-nav.vue";

export default {
  name: "hacks-page",
  components: {
    GithubCorner,
    HacksNav
  },
  data() {
    return {
      isMobile: false,
      link: "https://github.com/hacks/hacks.github.io"
    };
  },
  beforeMount() {
    const breakpoint = window.matchMedia("( max-width: 981px )");
    this.addQuery(breakpoint, mq => {
      this.isMobile = mq.matches;
    });
  },
  methods: {
    addQuery(mq, callback) {
      callback(mq);
      mq.addListener(callback);
    }
  }
};
</script>

<style lang="scss">
@import "../styles/_base";

:root {
  background-color: $hacks-background-color;
}

.hacks-page {
  @extend %fade-in-medium;
  color: $hacks-text-color;

  > section {
    @include animation-slide-top();
    @include animation-fast(slidein);
    width: $hacks-page-width;
    display: block;
    margin: 0 auto;
    padding-top: 1em;

    @media (max-width: $hacks-page-width) {
      width: 80vw;
    }
  }
}
</style>
