<template>
  <div class="hacks-announce">
    <div class="hacks-announce__bubble">
      <h3>announcements</h3>
      <p>
        Lightning talks happening soon!
        <br />Come to our meetings to find out more.
      </p>
    </div>
    <div class="hacks-announce__logo" />
  </div>
</template>

<script>
export default {
  name: "hacks-announce"
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-announce {
  display: flex;
  flex-flow: row-reverse wrap;

  @media (min-width: $hacks-page-width) {
    margin-left: 30px;
  }

  @media (max-width: 585px) {
    width: 235px !important;
    margin: 0 auto;
  }

  h3 {
    font-variant: small-caps;
    margin: unset;
    font-weight: $hacks-small-caps-weight;
    font-size: 2em;
    text-align: center;
  }

  &__logo {
    margin-top: 5em;
    background: url("../assets/logo.svg") no-repeat;
    background-size: 190px auto;
    width: 190px;
    height: 190px;

    @media (max-width: 585px) {
      margin-top: unset;
      padding-right: 30px;
    }
  }
  &__bubble {
    float: right;
    position: relative;
    margin-bottom: 2em;

    @media (min-width: 585px) {
      margin-left: 15px;
    }

    @media (max-width: 585px) {
      margin-bottom: unset;
    }

    p {
      font-size: 18px;
      line-height: unset;
      margin: unset;
      color: black;
      background: url("../assets/speech-bubble.svg") no-repeat;
      background-size: 230px auto;
      width: 220px;
      height: 180px;
      padding-left: 15px;
      padding-top: 15px;
    }
  }
}
</style>
