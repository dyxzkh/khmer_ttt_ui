<script setup lang="ts">
import Navbar from "./Navbar.vue";
import { ref, onMounted } from "vue";
const theme = ref(document.documentElement.getAttribute("data-theme"));

let isDark: boolean = theme.value === "dark" ? true : false;

onMounted(() => {
  isDark = console.log(isDark);
});
</script>

<template>
  <Navbar />
  <div class="container mx-auto px-5">
    <div
      class="flex items-center flex-col justify-center lg:flex-row lg:justify-evenly"
      style="height: calc(100vh - 68px)"
    >
      <div class="ttt_logo w-2/4 mb-20 lg:w-1/3 lg:mb-0">
        <img v-if="isDark" src="../assets/imgs/tic-tac-toe.png" alt="" />
        <img v-else src="../assets/imgs/tic-tac-toe.gif" alt="" />
      </div>
      <div class="hero_info">
        <h1 class="text-4xl text-center lg:text-5xl xl:text-6xl">
          Play Khmer Tic Tac Toe
        </h1>
        <div class="site_info flex justify-between lg:justify-between mt-5">
          <p>12,213,323 <span class="text-grey">Game Today</span></p>
          <p>1,323 <span class="text-grey">Playing Now</span></p>
        </div>
        <div class="play_btn_container mt-5">
          <!-- <div class="btn btn-outline btn-primary w-full" id="play_online_btn">
            <p class="text-4xl">Play Online</p>
          </div> -->
          <button
            class="btn btn-outline btn-primary w-full text-3xl lg:pt-2 lg:pb-12 xl:pt-4 xl:pb-14"
          >
            Play Online
          </button>
          <button
            class="btn btn-outline btn-info w-full text-3xl mt-5 lg:pt-2 lg:pb-12 xl:pt-4 xl:pb-14"
          >
            Play Computer
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<style scoped></style>
