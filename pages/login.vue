<script>
import {
  Card,
  CardContent,
  CardDescription,
  CardFooter,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";

export default {
  data() {
    return {
      username: "",
      email: "",
      password: "",
      authStatus: false,
    };
  },
  methods: {
    async handleSubmit(event) {
      event.preventDefault();

      const data = {
        username: this.username,
        password: this.password,
        email: this.email,
      };
      try {
        const response = await fetch("/api/users/login", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify(data),
        });
        if (response.status === 200) navigateTo("/");
      } catch (error) {
        console.error(error);
      }
    },
  },
};
</script>

<template>
  <div class="flex items-center justify-center h-3/4">
    <Card class="w-1/2">
      <CardHeader>
        <CardTitle>User Login</CardTitle>
      </CardHeader>
      <form @submit="handleSubmit">
        <CardContent class="grid cols-2">
          <h4>Username:</h4>
          <Input v-model="username" />
          <h4>Password:</h4>
          <Input v-model="password" />
        </CardContent>
        <CardFooter class="grid justify-items-end">
          <Button>Submit</Button>
        </CardFooter>
      </form>
    </Card>
  </div>
</template>
