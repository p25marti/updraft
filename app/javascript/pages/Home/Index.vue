<template>
  <a-page-header
    title="Home"
    sub-title="Welcome to Updraft"
  />
  <a-button type="primary">Test</a-button>
</template>

<script>
  import { defineComponent } from 'vue';
  import Layout from '~/components/Layout.vue'

  export default defineComponent({
    components: {},
    layout: Layout,
  });
</script>
