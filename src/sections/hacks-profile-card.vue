<template>
  <section class="hacks-profile-card">
    <hacks-square
      :source="
        person.imgName
          ? require('../assets/members/' + person.imgName + '.png')
          : require('../assets/logo.svg')
      "
    >
      <p style="margin-top: 0.6em;">
        <strong>{{ person.name }}</strong>
      </p>
      <p v-if="person.school && person.year">{{ person.school }}, {{ person.year }}</p>
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
    /**
     * The person's profile to be displayed within the profile card.
     */
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
  border-radius: 5px;
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
