<script setup lang="ts">
const { status } = useAuth();
definePageMeta({
  auth: {
    unauthenticatedOnly: false,
    navigateUnauthenticatedTo: "/login",
  },
});
</script>

<template>
  I am protected with a custom redirect! You are currently {{ status }}
</template>
