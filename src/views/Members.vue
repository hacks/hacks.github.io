<template>
  <section class="hacks-members">
    <p class="feature-message">
      <small>
        Want to feature yourself?
        <br />Make a
        <a
          class="hacks-members__link"
          href="https://github.com/hacks/hacks.github.io/blob/vue/src/data/members.js"
        >PR</a>
        or email
        <a
          class="hacks-members__link"
          href="mailto:webmaster@nuhacks.io"
        >webmaster@nuhacks.io</a>
        your name, interests, and a photo!
      </small>
    </p>

    <div v-for="(person, index) in members" :key="index">
      <div class="hacks-members__row hacks-members__member">
        <div :style="{flexDirection: + isMobile ? 'row' : 'column'}" class="hacks-members__column">
          <hacks-button v-if="person.links.website" :link="person.links.website">
            <img :src="cursorIcon" />
          </hacks-button>
          <hacks-button v-if="person.links.email" :link="`mailto:${person.links.email}`">
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
            <li v-for="(interest, index) in person.interests" :key="index">{{ interest }}</li>
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
    HacksButton
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
      members: MEMBERS,
      githubIcon: require("../assets/GitHub-Mark-64px.png"),
      cursorIcon: require("../assets/cursor.svg"),
      linkedinIcon: require("../assets/linkedin.svg"),
      outlookIcon: require("../assets/microsoft-outlook.svg")
    };
  }
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-members {
  &__row {
    display: flex;
    flex-flow: row wrap;
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
        }
      }
    }
  }

  &__column {
    margin-top: 2em;
    display: flex;
  }

  &__column img {
    display: block;
    width: 20px;
    margin: auto 1em;
  }

  .feature-message {
    width: 100%;
    margin-bottom: 1em;
    border: 1px solid white;
    border-radius: 25px;

    a {
      color: white !important;
    }
  }

  .feature-message > * {
    display: block;
    width: 60vw;
    margin: auto;
    padding: 1em;
  }
}
</style>
