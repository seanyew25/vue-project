import { useAuthStore } from "~/stores/auth";

export default defineNuxtRouteMiddleware(async (to) => {
  const authStore = useAuthStore();

  if (to.name !== "Login" && !localStorage.getItem("token")) {
    return navigateTo("/login");
  }
});
//   } else if (to.name !== "Login" && !authStore.user) {
//     authStore.setAuthUser(
//       await $fetch("/api/getauthuser", {
//         headers: authHeader,
//       })
//     );
//   }
// });
