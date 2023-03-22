<template>
  <a-layout style="min-height: 100vh">
    <a-layout-sider v-model:collapsed="collapsed" collapsible>
      <div class="logo" />
      <a-menu v-model:selectedKeys="selectedKeys" theme="dark" mode="inline">
        <a-menu-item key="1">
          <home-outlined />
          <span>Home</span>
        </a-menu-item>
      </a-menu>
    </a-layout-sider>

    <a-layout>
      <a-layout-content style="margin: 16px">
        <div :style="{ padding: '24px', background: '#fff', minHeight: '360px' }">
          <slot />
        </div>
      </a-layout-content>
      <a-layout-footer style="text-align: center">
        Made with ♥️ by Paul Martins
      </a-layout-footer>
    </a-layout>
  </a-layout>
</template>

<script>
  import {
    HomeOutlined,
  } from '@ant-design/icons-vue';
  import { defineComponent, ref } from 'vue';

  export default defineComponent({
    components: {
      HomeOutlined,
    },
    data() {
      return {
        collapsed: ref(false),
        selectedKeys: ref(['1']),
      };
    },
  });
</script>

<style>
  #components-layout-demo-side .logo {
    height: 32px;
    margin: 16px;
    background: rgba(255, 255, 255, 0.3);
  }

  .site-layout .site-layout-background {
    background: #fff;
  }
  [data-theme='dark'] .site-layout .site-layout-background {
    background: #141414;
  }
</style>
