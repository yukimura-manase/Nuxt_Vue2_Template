<!-- Login_Link_Component -->
<template>
  <div class="login_btn" @click="onClickLogin">
    <a v-text="loginText" :href="loginLinkUrl" :style="loginLinkStyle"></a>
  </div>
</template>
<script>
export default {
  name: 'LoginLink',
  components: {},
  props: {
    loginText: {
      type: String,
      default: 'ログイン',
    },
    loginLinkUrl: {
      type: String,
      default: '',
    },
    loginLinkStyle: {
      type: Object,
      default: () => {
        return {}
      },
    },
  },
  data() {
    return {}
  },
  methods: {
    // LoginPage
    onClickLogin() {
      this.$router.push({
        path: '/login',
      })
    },
  },
}
</script>
<style scoped>
.login_btn {
  background-color: #fff;
}
.login_btn:hover {
  background-color: rgba(128, 128, 128, 0.5); /* RGB値と透明度の値 */
}
</style>
