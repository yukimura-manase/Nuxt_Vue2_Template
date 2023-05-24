<template>
  <div></div>
</template>
<script>
export default {
  middleware({ store, redirect }) {
    if (!store.state.authenticated) {
      return redirect('/home')
    }
  },
}
</script>
