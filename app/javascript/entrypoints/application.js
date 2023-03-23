import { createApp, h } from 'vue';
import { createInertiaApp } from '@inertiajs/vue3';

import Antd from 'ant-design-vue';
import 'ant-design-vue/dist/antd.variable.min.css';

import { ConfigProvider } from 'ant-design-vue';

// Override colors for our specific theme
// For all possible values see https://www.antdv.com/docs/vue/customize-theme#Ant-Design-Vue-Less-variables
ConfigProvider.config({
  theme: {
    primaryColor: '#25b864',
  },
});

createInertiaApp({
  resolve: name => {
    const pages = import.meta.glob('../pages/**/*.vue', { eager: true })
    const page = pages[`../pages/${name}.vue`];

    if (!page) {
      throw new Error(`Could not find page for '${name}'`);
    }
    return  page
  },
  setup({ el, App, props, plugin }) {
    createApp({ render: () => h(App, props) })
      .use(plugin)
      .use(Antd)
      .mount(el)
  }
});
