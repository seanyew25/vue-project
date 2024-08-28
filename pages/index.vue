<script>
import Input from "~/components/ui/input/Input.vue";
import Post from "./post.vue";
import * as jose from "jose";

export default {
  setup() {
    definePageMeta({
      middleware: [
        async function (to, from) {
          const token = localStorage.getItem("token");
          if (!token) {
            return navigateTo("/login");
          } else {
            const info = jose.decodeJwt(token);
            const now = Math.floor(Date.now() / 1000);
            console.log(info);
            console.log(now);
            if (now > info.exp) {
              const response = await fetch("/api/users/refresh", {
                method: "POST",
              });
              const parsedResponse = await response.json();
              if (response.status === 200) {
                localStorage.setItem("token", parsedResponse.token);
              } else {
                navigateTo("/login");
              }
            } else {
              const response = await fetch("/api/users/authorise", {
                method: "POST",
                headers: {
                  Authorization: `Bearer ${token}`,
                },
              });
              if (response.status === 200) {
                //do nothing
              } else {
                navigateTo("/login");
              }
            }
          }
        },
      ],
    });
  },
  components: {
    Post,
  },

  data() {
    return {
      tasks: [],
    };
  },
  methods: {
    async fetchTasks() {
      try {
        const response = await fetch("/api/tasks", {
          headers: {
            Authorization: `Bearer ${localStorage.getItem("token")}`,
          },
        });
        const data = await response.json();
        this.tasks = data;
      } catch (error) {
        console.error(error);
      }
    },

    handleClick() {},
  },
  mounted() {
    this.fetchTasks();
  },
};
</script>

<template>
  <div class="p-3">
    <Input class="m-5" />
    <div class="grid grid-cols-4 gap-5 justify-between">
      <Post v-for="(task, index) in tasks" :key="index" :task="task" />
    </div>
  </div>
</template>
