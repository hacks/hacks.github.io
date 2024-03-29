<template>
  <section class="hacks-eboard">
    <!-- Each person's profile as a card -->
    <div class="hacks-eboard__row">
      <hacks-profile-card
        class="hacks-eboard__card"
        @click.native="triggerModal(person)"
        v-for="(person, index) in board"
        :key="index"
        :person="person"
      >
        <p class="hacks-small-caps">
          {{ person.position }}
        </p>
      </hacks-profile-card>
    </div>

    <!-- Individual Profile MODAL-->
    <hacks-modal v-if="showModal" @close-modal="closeModal()">
      <div class="hacks-eboard__modal">
        <!-- put a picture of the eboard member if they have one, otherwise put the octopus -->
        <img
          class="hacks-eboard__image"
          :src="
            member.imgName
              ? require('../assets/members/' + member.imgName + '.png')
              : require('../assets/logo.svg')
          "
        />
        <p class="hacks-eboard__title">
          <strong class="hacks-small-caps">{{ member.name }}</strong>
          <br />
          <em>{{ member.position }}</em>
          <br />
          {{ member.major }}, {{ member.year }}
        </p>
        <div>
          <p class="hacks-small-caps">about me</p>
          <p class="hacks-eboard__information">{{ member.bio }}</p>
        </div>

        <!-- members links -->
        <p class="hacks-small-caps">find me elsewhere</p>
        <div class="hacks-eboard__links hacks-eboard__information">
          <div v-for="(link, index) in links" :key="index">
            <hacks-popup v-if="link" direction="bottom">
              <template #label>{{ index }}</template>
              <template #content>
                <a :href="getUrl(index, link)" target="_blank">
                  <img class="hacks-eboard__links--icon" :src="getSrc(index)" />
                </a>
              </template>
            </hacks-popup>
          </div>
        </div>
      </div>
    </hacks-modal>
  </section>
</template>

<script>
import board from "../data/board";
import HacksModal from "../components/hacks-modal";
import HacksPopup from "../components/hacks-popup";
import HacksProfileCard from "../sections/hacks-profile-card";

export default {
  name: "hacks-eboard",
  components: {
    HacksModal,
    HacksPopup,
    HacksProfileCard,
  },
  data() {
    return {
      board,
      showModal: false,
      member: {},
      links: {},
    };
  },
  methods: {
    /**
    Triggers the modal to pop up when a profile card is clicked.
    (Assigns the selected person to display in the modal.)
     */
    triggerModal(currPers) {
      console.log(currPers)
      this.showModal = !this.showModal;
      this.member = currPers;
      this.links = currPers.links;
    },

    /**
    The modal is closed when the user presses the "x" button on the modal.
     */
    closeModal() {
      this.showModal = !this.showModal;
    },

    /**
     * Returns the link to be displayed at the bottom of modal as a URL.
     * (based from username of person)
     */
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

.hacks-eboard {
  @include animation-slide-top();
  @include animation-fast(slidein);

  &__card {
    cursor: pointer;
  }

  &__row {
    display: flex;
    flex-flow: row wrap;
  }

  &__modal {
    width: 40vh;
    display: block;
    margin: auto;
  }

  &__image {
    @extend %fade-in-fast;
    width: 20em;
    border-radius: 10px;
    display: block;
    margin: auto;
    margin-top: 3em;

    @media (max-width: 500px) {
      padding-top: 1em;
      width: 11em;
      margin: unset;
    }
  }

  &__title {
    padding: 1em 0;
    border-bottom: 5px dotted $hacks-nav-inactive-color;
  }

  &__information {
    padding: 1em 0;
  }

  &__links {
    display: flex;
    flex-flow: row wrap;
    justify-content: center;

    &--icon {
      display: inline-block;
      width: 40px;
      margin: auto 1em;
    }
  }
}
</style>
