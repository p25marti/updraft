<template>
  <a-page-header
    class="page-header"
    :title="set.name"
    :avatar="{ src: set.icon_svg_uri }"
  />

  <a-row :gutter="[16, 16]">
    <a-col :span="6">
      <a-card>
        <a-statistic
          title="Card count"
          :value="set.card_count"
        />
      </a-card>
    </a-col>
    <a-col :span="6">
      <a-card>
        <a-statistic
          title="Released on"
          :value="set.released_at"
        />
      </a-card>
    </a-col>
    <a-col :span="6">
      <a-card>
        <a-statistic
          title="Code"
          :value="setCode"
        />
      </a-card>
    </a-col>
    <a-col :span="6">
      <a-card>
        <a-statistic
          title="Type"
          :value="capitalizedSetType"
        />
      </a-card>
    </a-col>
  </a-row>

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
      },
      setCode() {
        return this.set.code.toUpperCase();
      }
    }
  });
</script>

<style scoped>
  .page-header {
    border: 1px solid rgb(235, 237, 240);
    background: white;
    margin-bottom: 16px;
  }
</style>
