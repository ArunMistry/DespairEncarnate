<template>
  <v-app>
    <v-app-bar
      absolute
      color="blue darken-3"
      class="d-flex justify-center text-h4"
      dark
    >
        DESPAIR ENCARNATE
    </v-app-bar>

    <v-main>
      <Story/>
    </v-main>
  </v-app>
</template>

<script>
import Story from './components/Story';

export default {
  name: 'App',

  components: {
    Story,
  },

  data: () => ({
    //
  }),
};
</script>
