<script setup lang="ts">
import Map from './components/Map.vue'
</script>

<template>
  <div id="map">
    <Map/>
  </div>
</template>

<style scoped>
#map {
  position: fixed;
  top: 0;
  left: 0;
  width: 100vw;
  height: 100vh;
}
</style>
