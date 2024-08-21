import { defineStore } from "pinia";

export const useMyAuthStore = defineStore({
  id: "myAuthStore",
  state: () => ({ authenticated: false }),
  actions: {
    setAuthTrue() {
      this.authenticated = true;
    },
    setAuthFalse() {
      this.authenticated = false;
    },
  },
});
