<template>
  <section class="hacks-profile-card">
    <hacks-square
      :source="
        person.hasImage
          ? require('../assets/members/' + person.name + '.jpg')
          : require('../assets/logo.svg')
      "
    >
      <p>
        <strong>{{ person.name }}</strong>
      </p>
      <p>{{ person.school }}, {{ person.year }}</p>
      <slot />
    </hacks-square>
  </section>
</template>

<script>
import HacksSquare from "../components/hacks-square";

export default {
  name: "hacks-profile-card",
  components: {
    HacksSquare,
  },
  props: {
    person: {
      type: Object,
      required: true,
      default: () => {},
    },
  },
};
</script>

<style lang="scss">
.hacks-profile-card {
  width: 240px;
  padding-top: 1em;
  border-radius: 10px;
  display: inline-block;
  margin: 1em;
  vertical-align: top;
  overflow: hidden;
  text-align: center;
  margin-left: unset;

  p {
    margin: unset;
  }

  @media (max-width: 631px) {
    display: block;
    margin: auto;
  }
}
</style>
