<template>
  <section class="hacks-members">
    <div v-for="(person, index) in members" :key="index">
      <div class="hacks-members__row hacks-members__member">
        <div class="hacks-members__column">
          <div v-for="(link, index) in person.links" :key="index">
            <hacks-button :link="getUrl(index, link)">
              <img class="hacks-members__icon" :src="getSrc(index)" />
            </hacks-button>
          </div>
        </div>
        <hacks-profile-card :person="person" page="members">
          <hacks-button>
            <h3 class="hacks-members__ccs">CCS: {{ person.ccs }}</h3>
          </hacks-button>
        </hacks-profile-card>
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
    };
  },
  methods: {
    getUrl(key, user) {
      let url;
      switch (key) {
        case "gitHub":
          url = "https://github.com/" + user;
          break;
        case "email":
          url = "mailto:" + user;
          break;
        case "linkedIn":
          url = "https://linkedin.com/in/" + user;
          break;
        default:
          url = user;
          break;
      }
      return url;
    },
    getSrc(key) {
      let source;
      switch (key) {
        case "website":
          source = require("../assets/cursor.svg");
          break;
        case "gitHub":
          source = require("../assets/GitHub-Mark-64px.png");
          break;
        case "email":
          source = require("../assets/microsoft-outlook.svg");
          break;
        case "linkedIn":
          source = require("../assets/linkedin.svg");
          break;
        default:
          source = null;
          break;
      }
      return source;
    },
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

  &__icon {
    display: block;
    width: 20px;
    margin: auto 1em;
  }
}
</style>
