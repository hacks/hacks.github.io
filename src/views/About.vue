<template>
  <section class="hacks-about">
    <p class="hacks-small-caps hacks-about__title">blurb</p>
    <p>
      NUHacks is a club for those just looking for a fun place to chill and do
      whatever with a buncha other geeks. For those looking for a social club
      with activities such as randomly going to JP Licks for ice cream, this is
      it. Or, to quote one alumni "Hacks is like being swaddled inside of a
      maternity sweater while another person is also in that sweater -- it's
      warm and snuggly and of course you both fit"
    </p>
    <div class="hacks-about__divider" />
    <p class="hacks-small-caps hacks-about__title">description</p>
    <p>
      One of Hacks members’ favorite pastimes is trying to describe what Hacks
      is. Here are some that we think are memorable:
    </p>
    <ul>
      <li>Hacks is a place where cool people build cool stuff because it's cool</li>
      <li>Tech tastemakers</li>
      <li>We sit around and watch train videos</li>
      <li>Social club for nerds</li>
      <li>
        You know, we sit around, hack the pentagon, usually with our ally, the
        hacker known as 4chan.
      </li>
    </ul>
    <p>
      If you want to add your own description come to a hacks meeting or email
      <a
        href="mailto:eboard@nuhacks.io"
      >eboard@nuhacks.io</a>
    </p>
  </section>
</template>

<script>
export default {
  name: "hacks-about"
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-about {
  a {
    color: white;
  }

  &__title {
    font-weight: $hacks-small-caps-weight;
    line-height: 2em;
  }

  &__divider {
    border-bottom: $hacks-border;
    margin: 2em auto;
  }

  ul {
    list-style: none;
    padding: unset;
    font-size: $hacks-text;
    line-height: 1.8em;

    li:before {
      content: "⮑";
      vertical-align: top;
      padding-right: 1em;
    }
  }
}
</style>
