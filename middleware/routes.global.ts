export default defineNuxtRouteMiddleware((to) => {
  const token = useCookie("bearer"); // get token from cookies
  const nuxtApp = useNuxtApp();
  // if (import.meta.server) return;
  // skip middleware on client side entirely
  if (import.meta.client) return;
  //   if (
  //     import.meta.client &&
  //     nuxtApp.isHydrating &&
  //     nuxtApp.payload.serverRendered
  //   )
  //     return;
  //this if statement fixes all my fucking hydrating code and I don't know how
  // if token exists and url is /login redirect to homepage
  if (token._value && to?.name === "login") {
    return navigateTo("/");
  }

  // if token doesn't exist redirect to log in
  if (!token._value && to?.name !== "login") {
    abortNavigation();
    return navigateTo("/login");
  }
});
