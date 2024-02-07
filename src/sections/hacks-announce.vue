<template>
  <div class="hacks-announce">

    <iframe
      class="hacks-announce__discord-widget"
      src="https://e.widgetbot.io/channels/809618860726157332/813553879764828161"
      width="500"
      height="350"
      frameborder="0"
    ></iframe>

    <div class="hacks-announce__logo" />
  </div>
</template>

<script>
export default {
  name: "hacks-announce",
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-announce {
  margin: 10px 0;
  min-width: $hacks-page-width;
  display: flex;
  flex-flow: row-reverse wrap;
  justify-content: space-around;

  &__discord-widget {
    border-radius: 10px;
  }

  @media (max-width: 585px) {
    width: 293px;
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
    background-size: 293px auto;
    width: 293px;
    height: 293px;

    @media (max-width: 585px) {
      margin-top: unset;
      padding-right: 30px;
    }
  }
}
</style>
