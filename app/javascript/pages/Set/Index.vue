<template>
  <a-page-header
    title="Sets"
    class="page-header"
    sub-title="Expansion sets released since 1993"
  />
  <a-row :gutter="[16, 16]">
    <a-col
      v-for="set in sets"
      :key="set.id"
      :span="6"
    >
      <Link :href="`/sets/${set.code}`">
        <a-card
          hoverable
        >
          <a-card-meta
            :title="set.name"
            :description="set.released_at"
          >
            <template #avatar>
              <a-avatar size="small" shape="square" :src="set.icon_svg_uri" />
            </template>
          </a-card-meta>
        </a-card>
      </Link>
    </a-col>
  </a-row>
</template>

<script>
  import { defineComponent } from 'vue';
  import Layout from '~/components/Layout.vue'
  import { Link } from '@inertiajs/vue3';

  export default defineComponent({
    components: { Link },
    layout: Layout,
    props: {
      sets: {
        type: Array,
        required: true,
        default: () => []
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
