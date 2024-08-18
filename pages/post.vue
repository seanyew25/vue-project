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
export default {
  name: "Post",
  props: {
    task: {
      type: Object,
      required: true,
    },
  },
  data() {
    return {
      isDone: this.task.status,
    };
  },
  methods: {
    handleClick() {
      this.isDone = !this.isDone;
    },
  },
};
</script>

<template>
  <Card class="relative group">
    <CardHeader>
      <CardTitle>{{ task.name }}</CardTitle>
      <!-- <CardDescription
        ><img
          src="https://upload.wikimedia.org/wikipedia/commons/c/cd/Equus_quagga_quagga%2C_coloured.jpg"
      /></CardDescription> -->
    </CardHeader>
    <CardContent>{{ task.description }}</CardContent>
    <CardFooter>
      <Button v-if="isDone" @click="handleClick">Done</Button>
      <Button v-else class="bg-red-500" @click="handleClick">Undone</Button>
    </CardFooter>
  </Card>
</template>
