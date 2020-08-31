<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
        lcbuddy
      </div>

      <v-spacer></v-spacer>
      <v-btn to="/todo" text>
        <span class="mr-2">Todo</span>
      </v-btn>
      <v-btn to="/login" text>
        <span class="mr-2">Login</span>
      </v-btn>
    </v-app-bar>

    <v-main>
      <router-view></router-view>
    </v-main>
  </v-app>
</template>

<script>

export default {
  name: 'App',

  components: {
  },

  data: () => ({
    //
  }),
};
</script>
