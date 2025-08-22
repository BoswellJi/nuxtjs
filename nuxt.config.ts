// https://nuxt.com/docs/api/configuration/nuxt-config

import tailwindcss from '@tailwindcss/vite';

export default defineNuxtConfig({
  compatibilityDate: '2025-05-15',
  devtools: { enabled: false },
  modules: ['@element-plus/nuxt', '@vant/nuxt', '@nuxt/eslint', '@prisma/nuxt'],
  css: ['./app/assets/css/main.css'],
  devServer: {
    port: 8080,
  },
  vite: {
    plugins: [tailwindcss()],
    resolve: {
      alias: {
        '.prisma/client/index-browser': './node_modules/.prisma/client/index-browser.js',
      },
    },
  },
});