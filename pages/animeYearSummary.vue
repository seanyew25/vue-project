<script>
export default {
  el: "#appl",
  data: function () {
    return {
      options: {
        title: {
          text: "Shows watched from Dec 2022 - Aug 2024",
        },

        chart: {
          id: "vuechart-example",
        },
        xaxis: {
          categories: [],
        },
      },
      series: [
        {
          name: "Shows Watched",
          data: [],
        },
      ],
    };
  },

  methods: {
    async fetchAnimeByMonth() {
      const response = await fetch("/api/anime/years");
      const data = await response.json();
      this.options = {
        xaxis: {
          categories: data.dates,
        },
      };
      this.series = [
        {
          data: data.animeWatched,
        },
      ];
    },
  },

  mounted() {
    this.fetchAnimeByMonth();
  },
};
</script>

<template>
  <apexchart
    class="relative"
    type="line"
    :options="options"
    :series="series"
  ></apexchart>
</template>
