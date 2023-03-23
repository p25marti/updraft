<template>
  <a-layout style="min-height: 100vh">
    <a-layout-header
      class="header"
    >
      <h1 class="logo">
        🍃 Updraft
      </h1>
    </a-layout-header>

    <a-layout>
      <a-layout-sider v-model:collapsed="collapsed" collapsible>
        <a-menu v-model:selectedKeys="selectedKeys" theme="dark" mode="inline">
          <a-menu-item key="/">
            <Link href="/">
              <home-outlined />
              <span>Home</span>
            </Link>
          </a-menu-item>
          <a-menu-item key="/sets">
            <Link href="/sets">
              <appstore-outlined />
              <span>Sets</span>
            </Link>
          </a-menu-item>
        </a-menu>
      </a-layout-sider>

      <a-layout>
        <a-layout-content style="margin: 16px">
          <div :style="{ padding: '24px' }">
            <slot />
          </div>

        </a-layout-content>
        <a-layout-footer style="text-align: center">
          Made with ♥️ by Paul Martins
        </a-layout-footer>
      </a-layout>
    </a-layout>
  </a-layout>
</template>

<script>
  import {
    HomeOutlined,
    AppstoreOutlined
  } from '@ant-design/icons-vue';
  import { Link } from '@inertiajs/vue3';
  import { defineComponent, ref } from 'vue';

  export default defineComponent({
    components: {
      HomeOutlined,
      AppstoreOutlined,
      Link,
    },
    data() {
      return {
        collapsed: ref(false),
        selectedKeys: ref([window.location.pathname]),
      };
    },
    mounted() {
      if (window.location.pathname.startsWith('/sets')) {
        this.selectedKeys = ['/sets'];
      } else {
        this.selectedKeys = ['/'];
      }
    }
  });
</script>

<style scoped>
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

  .logo {
    color: white;
  }
</style>
