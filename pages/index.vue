<script>
import Input from "~/components/ui/input/Input.vue";
import Post from "./post.vue";
import auth from "~/middleware/auth.global";

export default {
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
