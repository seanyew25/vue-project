<script>
import { socket } from "~/components/socket";

export default {
  data() {
    return {
      game: [
        [1, 0, 1],
        [1, 0, 1],
        [1, 0, 1],
      ],
    };
  },

  mounted() {
    // socket.on("connect", () => {
    //   onsole.log(socket.id); // ojIckSD2jqNzOqIrAGzL
    // });
    const socket = io();
  },
};
</script>

<template>
  <div class="container align-items-center">
    <div v-for="row in game" class="row justify-content-sm-center">
      <div v-for="move in row" class="col-sm-2 border border-primary">
        <div class="ratio ratio-1x1">
          <img v-if="move == 0" src="../svg/x-symbol.svg" />
          <img v-else src="../svg/letter-o.svg" />
        </div>
      </div>
    </div>
  </div>

  <!-- // <div class="row justify-content-sm-center">
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    // </div>
    // <div class="row justify-content-sm-center">
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    // </div>
    // <div class="row justify-content-sm-center">
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    //   <div class="col-sm-2 border border-primary">
    //     <div class="ratio ratio-1x1">test</div>
    //   </div>
    // </div>
  // </div> -->
</template>
