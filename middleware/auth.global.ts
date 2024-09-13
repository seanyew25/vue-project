export default defineNuxtRouteMiddleware(async (to) => {
  if (to.path == "/" || to.path == "/dashboard") {
    const token = localStorage.getItem("token");
    if (!token) {
      return await navigateTo("/login");
    } else {
      const response = await fetch("/api/users/authorise", {
        method: "POST",
        headers: {
          Authorization: `Bearer ${token}`,
        },
      });
      const completeResponse = await response.json();
      if (
        response.status === 401 &&
        completeResponse.error === "Expired token"
      ) {
        const refreshResponse = await fetch("/api/users/refresh", {
          method: "POST",
        });
        const parsedResponse = await refreshResponse.json();
        if (refreshResponse.status === 200) {
          localStorage.setItem("token", parsedResponse.token);
        } else {
          return await navigateTo("/login");
        }
      } else if (response.status === 200) {
        // do nothing
      } else {
        return await navigateTo("/login");
      }
    }
  }
});
