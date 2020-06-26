<template>
  <section class="hacks-members">
    <div v-for="(person, index) in members" :key="index">
      <div class="hacks-members__row hacks-members__member">
        <div class="hacks-members__column">
          <hacks-button
            v-if="person.links.website"
            :link="person.links.website"
          >
            <img :src="cursorIcon" />
          </hacks-button>
          <hacks-button
            v-if="person.links.email"
            :link="`mailto:${person.links.email}`"
          >
            <img :src="outlookIcon" />
          </hacks-button>
          <hacks-button
            v-if="person.links.github"
            :link="`https://github.com/${person.links.github}`"
          >
            <img :src="githubIcon" />
          </hacks-button>
          <hacks-button
            v-if="person.links.linkedin"
            :link="`https://linkedin.com/in/${person.links.github}`"
          >
            <img :src="linkedinIcon" />
          </hacks-button>
        </div>
        <hacks-profile-card :person="person" page="members" />
        <div class="hacks-members__list">
          <p class="hacks-small-caps">interests</p>
          <ul>
            <li v-for="(interest, index) in person.interests" :key="index">
              {{ interest }}
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import MEMBERS from "../data/members";
import HacksProfileCard from "../sections/hacks-profile-card";
import HacksButton from "../components/hacks-button";

export default {
  name: "hacks-members",
  components: {
    HacksProfileCard,
    HacksButton,
  },
  data() {
    return {
      members: MEMBERS,
      githubIcon: require("../assets/GitHub-Mark-64px.png"),
      cursorIcon: require("../assets/cursor.svg"),
      linkedinIcon: require("../assets/linkedin.svg"),
      outlookIcon: require("../assets/microsoft-outlook.svg"),
    };
  },
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-members {
  &__row {
    display: flex;
    flex-flow: row wrap;
  }

  &__ccs {
    display: block;
    margin: auto;
    color: $hacks-background-color;
    font-size: 18px;
    text-transform: uppercase;
  }

  &__member {
    margin: 1em;
    margin-left: unset;
    margin-top: unset;
  }

  &__list {
    font-size: $hacks-text;
    width: 350px;
    margin: 1em 0;

    ul {
      list-style: none;
      padding-left: unset;
      margin: unset;

      > li {
        word-wrap: break-word;

        &::before {
          content: ">";
          padding-right: 1em;
          vertical-align: top;
          font-size: 18px;
        }
      }
    }
  }

  &__column {
    margin-top: 2em;
    display: flex;
    flex-flow: column wrap;
  }

  &__column img {
    display: block;
    width: 20px;
    margin: auto 1em;
  }
}
</style>
