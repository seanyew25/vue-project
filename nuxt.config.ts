export default defineNuxtConfig({
  compatibilityDate: "2024-04-03",
  devtools: { enabled: true },

  modules: [
    "@nuxtjs/tailwindcss",
    "shadcn-nuxt",
    "@pinia/nuxt",
    "@sidebase/nuxt-auth",
  ],

  pinia: {
    storesDirs: ["./stores/**"],
  },

  auth: {
    baseURL: "/api/users",
    globalAppMiddleware: false,
    provider: {
      isEnabled: true,
      disableServerSideAuth: false,
      originEnvKey: "AUTH_ORIGIN",
      baseURL: "http://localhost:3000/api/users",
      type: "local",
      endpoints: {
        signIn: { path: "/login", method: "post" },
        // signOut: { path: "/logout", method: "post" },
        signUp: { path: "/signup", method: "post" },
        // getSession: { path: "/session", method: "get" },
        // refresh: { path: "/refresh", method: "post" },
      },
      token: {
        signInResponseTokenPointer: "/token/bearer",
        type: "Bearer",
        cookieName: "auth.token",
        headerName: "Authorization",
        maxAgeInSeconds: 1800,
        sameSiteAttribute: "lax",
        cookieDomain: "localhost",
        secureCookieAttribute: false,
        httpOnlyCookieAttribute: false,
        // refreshOnlyToken: true,
      },
      pages: {
        login: "/login",
      },
      sessionDataType: {
        id: "number",
      },
      sessionRefresh: {
        enablePeriodically: false,
        enableOnWindowFocus: false,
      },
    },
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
