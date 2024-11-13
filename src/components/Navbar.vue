<template>
  <div id="nav_container" class="container mx-auto px-5 w-screen">
    <div class="navbar bg-base-100 px-0">
      <div class="navbar-start">
        <div class="dropdown">
          <div tabindex="0" role="button" class="btn btn-ghost lg:hidden pl-0">
            <svg
              xmlns="http://www.w3.org/2000/svg"
              class="h-5 w-5"
              fill="none"
              viewBox="0 0 24 24"
              stroke="currentColor"
            >
              <path
                stroke-linecap="round"
                stroke-linejoin="round"
                stroke-width="2"
                d="M4 6h16M4 12h8m-8 6h16"
              />
            </svg>
          </div>
          <ul
            tabindex="0"
            class="menu menu-sm dropdown-content bg-base-100 rounded-box z-[1] mt-3 w-52 p-2 shadow"
          >
            <li><a>Play</a></li>
            <li><a>Social</a></li>
            <li><a>About</a></li>
          </ul>
        </div>
        <RouterLink class="btn btn-ghost text-xl p-0" to="/"
          >Tic Tac Toe Khmer</RouterLink
        >
      </div>
      <div class="navbar-center hidden lg:flex">
        <ul class="menu menu-horizontal px-1">
          <li><RouterLink to="/">Play</RouterLink></li>
          <!-- <li>
            <details>
              <summary>Parent</summary>
              <ul class="p-2">
                <li><a>Submenu 1</a></li>
                <li><a>Submenu 2</a></li>
              </ul>
            </details>
          </li> -->
          <li><a>Social</a></li>
          <li><a>About</a></li>
        </ul>
      </div>
      <div class="navbar-end">
        <RouterLink class="btn btn-outline btn-primary btn-sm" to="/login"
          >Login</RouterLink
        >
      </div>
    </div>
  </div>
</template>

<script setup lang="ts"></script>

<style scoped></style>
