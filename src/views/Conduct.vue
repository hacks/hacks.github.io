<template>
  <section class="hacks-conduct">
    <h2>Hacks values people who...</h2>

    <div class="hacks-conduct__values">
      <div class="hacks-conduct__value hacks-conduct__kind">
        <p class="hacks-small-caps">Be kind.</p>
      </div>

      <div class="hacks-conduct__value hacks-conduct__help">
        <p class="hacks-small-caps">Help others.</p>
      </div>

      <div class="hacks-conduct__value hacks-conduct__build">
        <p class="hacks-small-caps">Build cool things.</p>
      </div>
    </div>

    <p>
      The following code of conduct is intentionally minimal because Hacks is
      meant to be an unstructured community without strict rules.
    </p>
    <div class="hacks-conduct__paragraph hacks-conduct__community">
      <p>
        Hacks is a community of friends. We ask you to be aware of the fact that
        conversations that may be appropriate within the context of a specific
        friendship or relationship with another Hacks member may be
        inappropriate in the Hacks space or in a group conversation with Hacks
        members you don’t know well.
      </p>
    </div>

    <div class="hacks-conduct__paragraph hacks-conduct__others">
      <p>
        Be kind to others. Do not insult or put down other hacks members.
        Remember that harassment and sexist, racist, or exclusionary jokes are
        not appropriate for hacks.
      </p>
    </div>

    <div class="hacks-conduct__paragraph hacks-conduct__violation">
      <p>
        Hacks members violating these rules may be asked to leave the community
        at the sole discretion of the hacks board.
      </p>
    </div>

    <div class="hacks-conduct__contact">
      <p>
        Thank you for helping to make this a welcoming, friendly community for
        all.
      </p>
      <p>
        If you have any questions, please contact
        <a href="mailto:eboard@nuhacks.io" target="_blank">eboard@nuhacks.io</a
        >.
      </p>
      <p>
        This
        <strong>Code of Conduct</strong> is based on the Recurse Center’s
        <a href="https://www.recurse.com/code-of-conduct">code of conduct</a>.
      </p>
    </div>
  </section>
</template>

<script>
export default {
  name: "hacks-conduct",
};
</script>

<style lang="scss">
@import "../styles/_base";

.hacks-conduct {
  @media (max-width: 620px) {
    width: 100vw !important;
  }

  a {
    color: white;
  }

  &__values {
    display: flex;
    flex-flow: row wrap;
    text-align: center;
    width: 60vw;
    margin: 2em auto;

    @media (max-width: 620px) {
      width: 100vw;
    }
  }

  &__value {
    margin: 1em;
    width: 300px;

    p {
      margin-top: 100%;
      font-weight: $hacks-small-caps-weight;
    }
  }

  &__kind {
    background: url("../assets/values/kind.png") no-repeat;
    background-size: 300px;
  }

  &__help {
    background: url("../assets/values/help.png") no-repeat;
    background-size: 300px;
  }

  &__build {
    background: url("../assets/values/build.png") no-repeat;
    background-size: 300px;
  }

  &__paragraph {
    height: 100%;
    width: fit-content;
    margin: 2em 0;

    p {
      padding-top: 43vh;
      @media (max-width: 620px) {
        margin: 0 1em;
      }
    }
  }

  &__community {
    background: url("../assets/values/community.png") no-repeat;
    background-size: 500px;
    background-position: top;
  }

  &__others {
    background: url("../assets/values/kind-to-others.png") no-repeat;
    background-size: 500px;
    background-position: top;
  }

  &__violation {
    background: url("../assets/values/violation.png") no-repeat;
    background-size: 500px;
    background-position: top;
  }

  &__contact {
    border: $hacks-border;
    margin: 3em 1em;
    padding: 3em;
    border-radius: 25px;
    line-height: 3em;
  }
}
</style>
