<template>
  <a-button
    type="primary"
    @click="count++">Count is: {{ count }}
  </a-button>
</template>

<script>
export default {
  data() {
    return {
      count: 0
    }
  }
}
</script>

<style scoped>
  button {
    font-weight: bold;
  }
</style>
