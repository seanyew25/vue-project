<script>
export default {
  el: "#app",
  data: function () {
    return {
      chart: {
        id: "genreChart",
      },
      series: [],
      chartOptions: {
        chart: {
          type: "pie",
          width: 380,
        },
        title: {
          text: "Breakdown of genres watched",
        },

        labels: [],
        responsive: [
          {
            breakpoint: 480,
            options: {
              chart: {
                width: 200,
              },
              legend: {
                position: "bottom",
              },
            },
          },
        ],
      },
    };
  },
  methods: {
    async fetchAnimeSummaryByGenre() {
      const response = await fetch("/api/anime/genres");
      const data = await response.json();
      this.chartOptions = {
        labels: data.genres,
      };
      this.series = data.numAnimeByGenre;
    },
  },

  mounted() {
    this.fetchAnimeSummaryByGenre();
  },
};
</script>

<template>
  <apexchart
    width="380"
    type="pie"
    :options="chartOptions"
    :series="series"
  ></apexchart>
</template>
