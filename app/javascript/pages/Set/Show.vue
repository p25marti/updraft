<template>
  <a-page-header
    class="page-header"
    :title="set.name"
    :avatar="{ src: set.icon_svg_uri }"
  />

  <a-row
    class="margin-bot-16"
    :gutter="[16, 16]"
  >
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

  <a-row :gutter="16">
    <a-col :span="10">
      <a-card title="Color Distribution">
        <color-distribution />
      </a-card>
    </a-col>

    <a-col :span="14">
      <a-card>
        <card-type-breakdown />
      </a-card>
    </a-col>
  </a-row>

</template>

<script>
  import { capitalize, defineComponent } from 'vue';
  import Layout from '~/components/Layout.vue'
  import ColorDistribution from './ColorDistribution.vue';
  import CardTypeBreakdown from './CardTypeBreakdown.vue';

  export default defineComponent({
    components: { ColorDistribution, CardTypeBreakdown },
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

  .margin-bot-16 {
    margin-bottom: 16px;
  }
</style>
