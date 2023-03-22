<template>
  <a-page-header
    :title="set.name"
    :sub-title="capitalizedSetType"
  />
  <p>{{ set }}</p>
</template>

<script>
  import { capitalize, defineComponent } from 'vue';
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
    },
    computed: {
      capitalizedSetType() {
        return capitalize(this.set.set_type);
      }
    }
  });
</script>
