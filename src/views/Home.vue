<template>
  <section class="hacks-homepage">
    <div class="hacks-homepage__header hacks-row">
      <div>
        <h1 class="hacks-homepage__title">NUHacks</h1>
        <h2>Thursdays 20:00—22:00</h2>
        <h2>West Village H, Room 366</h2>
      </div>
      <hacks-announce />
    </div>

    <div class="hacks-homepage__row hacks-row">
      <p class="hacks-homepage__slogan">
        <em>
          If you like making, breaking, hacking, designing, building, and other
          creative-type things, you should hang with us!
        </em>
      </p>

      <div class="hacks-homepage__questions">
        <span class="hacks-small-caps">Questions?</span>
        <p>Email us at <a href="mailto:eboard@nuhacks.io">eboard@nuhacks.io</a></p>
      </div>
    </div>

    <div class="hacks-homepage__row hacks-row">
      <div class="hacks-homepage__links">
        <span class="hacks-homepage__join hacks-small-caps">find us on</span>
        <div class="hacks-homepage__row hacks-row">
          <hacks-button link="https://github.com/hacks">
            <img src="../assets/GitHub-Mark-64px.png" />
            <h3>GitHub</h3>
          </hacks-button>

          <hacks-button link="https://facebook.com/groups/nuhacks">
            <img src="../assets/facebook.svg" />
            <h3>Facebook</h3>
          </hacks-button>

          <hacks-button link="https://twitter.com/NUHacks">
            <img src="../assets/twitter.png" />
            <h3>Twitter</h3>
          </hacks-button>
        </div>
      </div>

      <div class="hacks-homepage__links">
        <span class="hacks-homepage__join hacks-small-caps">Join our</span>
        <div class="hacks-homepage__row hacks-row">
          <hacks-button
            link="https://nuhacks.us4.list-manage.com/subscribe?u=cbcce83bcf3543d25bd103865&id=6c0da9d34e"
          >
            <img src="../assets/mail.svg" />
            <h3>Mailing List</h3>
          </hacks-button>
          <hacks-button
            link="https://discord.gg/SbD8t7ZPfg"
          >
            <img src="../assets/Discord-Logo-Black.svg" />
            <h3>Discord</h3>
          </hacks-button>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
import HacksButton from "../components/hacks-button";
import HacksAnnounce from "../sections/hacks-announce";

export default {
  name: "hacks-homepage",
  components: {
    HacksButton,
    HacksAnnounce,
  },
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-homepage {
  &__header {
    border-bottom: 1px solid white;
    margin-bottom: 1em;
  }

  &__slogan {
    width: 600px;
    line-height: $hacks-text-spacing;
    margin-right: 1em;
    margin-bottom: 1em;
  }

  &__join {
    font-weight: $hacks-small-caps-weight;
    padding-left: 0.3em;
  }

  &__title {
    text-shadow: $hacks-title-three-dee;
    color: rgba($color: white, $alpha: 0.7);
  }

  &__links {
    border: $hacks-border;
    padding: 0.5em;
    margin: 1em;
    margin-left: unset;
    border-radius: 25px;
    width: fit-content;

    .hacks-homepage__row {
      margin: unset;
    }
  }

  &__questions {
    a {
      text-decoration: none;
      color: white;
    }
  }

  &__row {
    margin-bottom: 1.5em;

    img {
      height: 24px;
    }
  }
}
</style>
