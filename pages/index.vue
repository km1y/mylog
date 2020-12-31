<template>
<section class="text-gray-400 bg-gray-900 body-font overflow-hidden">
  <div class="origin-container px-5 mx-auto">
    <nuxt-content :document="home" />
  </div>
</section>
</template>

<script>
import Vue from 'vue'
export default{
  async asyncData ({ $content, params }) {
    const home = await $content('index').fetch()
    return { home }
  }
}
</script>

<style>
.nuxt-content h1 {
  margin: 20px 0px;
  line-height: 3.0rem;
  font-size: 2.0rem;
}
.nuxt-content h2 {
  border-bottom: solid 2px rgba(99, 179, 237, var(--text-opacity));
  margin: 20px 0px;
  line-height: 3.0rem;
  font-size: 1.5rem;
}

.nuxt-content h3{
  border-bottom: solid 0.5px grey;
  margin: 20px 0px;
}

.nuxt-content p{
  line-height: 2em;
}

.nuxt-content li{
  line-height: 2em;
}
</style>