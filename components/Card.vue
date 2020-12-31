<template>
      <div class="py-8 flex border-t-2 border-gray-800 flex-wrap md:flex-nowrap">
        <div class="md:w-64 md:mb-0 mb-6 flex-shrink-0 flex flex-col">
          <!-- <span class="font-semibold title-font text-white inline-block" v-for="tag in post.tags" :key="tag">{{ tag }}</span> -->
          <span class="title-font text-white inline-block">{{ post.tags.join(' / ') }}</span>
          <span class="mt-1 text-gray-500 text-sm">{{ post.date | moment }}</span>
        </div>
        <div class="md:flex-grow">
          <!-- <h2 class="text-2xl font-medium text-white title-font mb-2">Meditation bushwick direct trade taxidermy shaman</h2> -->
          <h2 class="text-2xl font-medium font-semibold text-white title-font mb-2">{{ post.title }}</h2>
          <!-- <p class="leading-relaxed">Glossier echo park pug, church-key sartorial biodiesel vexillologist pop-up snackwave ramps cornhole. Marfa 3 wolf moon party messenger bag selfies, poke vaporware kombucha lumbersexual pork belly polaroid hoodie portland craft beer.</p> -->
          <p class="leading-relaxed">{{ post.description }}</p>
          <a class="text-blue-400 inline-flex items-center mt-4">Learn More
            <svg class="w-4 h-4 ml-2" viewBox="0 0 24 24" stroke="currentColor" stroke-width="2" fill="none" stroke-linecap="round" stroke-linejoin="round">
              <path d="M5 12h14"></path>
              <path d="M12 5l7 7-7 7"></path>
            </svg>
          </a>
        </div>
      </div>
</template>

<script>
import moment from "moment";
export default {
  filters: {
    moment(date) {
      return moment(date).format('YYYY/MM/DD');
    }
  },
  props: ['post']
}
</script>