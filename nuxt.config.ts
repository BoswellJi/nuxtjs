// https://nuxt.com/docs/api/configuration/nuxt-config

import tailwindcss from '@tailwindcss/vite';

export default defineNuxtConfig({
  compatibilityDate: '2025-05-15',
  devtools: { enabled: false },
  modules: ['@element-plus/nuxt', '@vant/nuxt', '@nuxt/eslint'],
  css: ['./app/assets/css/main.css'],
  vite: {
    plugins: [tailwindcss()],
  },
});
