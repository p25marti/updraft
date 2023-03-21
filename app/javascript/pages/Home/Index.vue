<template>
  {{ random }}
  <a-button type="primary">Test</a-button>
</template>

<script>
  import { defineComponent } from 'vue';
  import App from '~/components/App.vue'

  export default defineComponent({
    components: {},
    layout: App,
    props: {
      random: {
        type: Object,
        required: true,
      }
    }
  });
</script>
