<template>
<section class="text-gray-400 bg-gray-900 body-font overflow-hidden">
  <div class="origin-container px-5 py-24 mx-auto">
    <div class="blog-title text-center">
      <time>{{ post.date | moment }}</time>
      <h1>{{ post.title }}</h1>
    </div>
    <nuxt-content :document="post" />
  </div>
</section>
</template>

<script>
import moment from "moment";
export default {
  filters: {
    moment(date) {
      return moment(date).format('YYYY/MM/DD');
    }
  },
  async asyncData ({ $content, params }) {
    const post = await $content('posts', params.slug).fetch()
    return { post }
  }
}
</script>

<style>
.blog-title h1{
  font-size: 2.5rem;
  line-height: 3.4rem;
}
</style>