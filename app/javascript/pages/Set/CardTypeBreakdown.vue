<template>
  <a-row justify="space-between">
    <a-col :span="4">
      <a-statistic :value="creatures">
        <template #prefix>
          <i class="ms ms-creature"></i>
        </template>
      </a-statistic>
    </a-col>
    <a-col :span="4">
      <a-statistic :value="planeswalkers">
        <template #prefix>
          <i class="ms ms-planeswalker"></i>
        </template>
      </a-statistic>
    </a-col>
    <a-col :span="4">
      <a-statistic :value="instants">
        <template #prefix>
          <i class="ms ms-instant"></i>
        </template>
      </a-statistic>
    </a-col>
    <a-col :span="4">
      <a-statistic :value="sorceries">
        <template #prefix>
          <i class="ms ms-sorcery"></i>
        </template>
      </a-statistic>
    </a-col>
    <a-col :span="4">
      <a-statistic :value="artifacts">
        <template #prefix>
          <i class="ms ms-artifact"></i>
        </template>
      </a-statistic>
    </a-col>
    <a-col :span="4">
      <a-statistic :value="enchantments">
        <template #prefix>
          <i class="ms ms-enchantment"></i>
        </template>
      </a-statistic>
    </a-col>
  </a-row>
</template>

<script>
  import { defineComponent } from 'vue';

  export default defineComponent({
    components: {},
    data() {
      return {
        creatures: 99,
        planeswalkers: 99,
        instants: 99,
        sorceries: 99,
        artifacts: 99,
        enchantments: 99,
      }
    }
  });
</script>
