<template>
  <ol-map
      :loadTilesWhileAnimating="true"
      :loadTilesWhileInteracting="true"
      style="height: 100%"
  >
    <ol-view
        ref="view"
        :center="center"
        :rotation="rotation"
        :zoom="zoom"
        :projection="projection"
    />

    <ol-tile-layer>
      <ol-source-osm />
    </ol-tile-layer>

    <ol-vector-layer>
      <ol-source-vector :url="url" :format="geoJson"> </ol-source-vector>
    </ol-vector-layer>
  </ol-map>
</template>

<script setup>
import {inject, ref} from "vue";

const center = ref([40, 40]);
const projection = ref("EPSG:4326");
const zoom = ref(8);
const rotation = ref(0);

const url = ref("https://raw.githubusercontent.com/codeforgermany/click_that_hood/main/public/data/spain-provinces.geojson");
const format = inject("ol-format");
const geoJson = new format.GeoJSON();
</script>