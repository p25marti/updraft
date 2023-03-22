<template>
  <a-page-header
    :title="set.name"
    :sub-title="set.set_type"
  />
  <p>{{ set }}</p>
</template>

<script>
  import { defineComponent } from 'vue';
  import Layout from '~/components/Layout.vue'

  export default defineComponent({
    components: {},
    layout: Layout,
    props: {
      set: {
        type: Object,
        required: true,
        default: () => {{}}
      }
    }
  });
</script>
