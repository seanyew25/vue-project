import type { NuxtPage } from "nuxt/schema";

export default defineNuxtConfig({
  compatibilityDate: "2024-04-03",
  devtools: { enabled: true },
  ssr: true,

  modules: ["@nuxtjs/tailwindcss", "shadcn-nuxt", "@pinia/nuxt"],

  pinia: {
    storesDirs: ["./stores/**"],
  },

  shadcn: {
    /**
     * Prefix for all the imported component
     */
    prefix: "",
    /**
     * Directory that the component lives in.
     * @default "./components/ui"
     */
    componentDir: "./components/ui",
  },
});
