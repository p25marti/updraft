<template>
  <v-chart class="chart" :option="option" />
</template>

<script setup>
  import { use } from "echarts/core";
  import { CanvasRenderer } from "echarts/renderers";
  import { PieChart } from "echarts/charts";
  import {
    TitleComponent,
    TooltipComponent,
    LegendComponent
  } from "echarts/components";
  import VChart from "vue-echarts";
  import { ref } from "vue";

  use([
    CanvasRenderer,
    PieChart,
    TitleComponent,
    TooltipComponent,
    LegendComponent
  ]);

  const option = ref({
    tooltip: {
      trigger: "item",
      formatter: "{b} : {c} ({d}%)"
    },
    series: [
      {
        name: "Color Distribution",
        type: "pie",
        radius: "80%",
        center: ["40%", "50%"],
        color: [
          '#fac858',
          '#5470c6',
          '#464646',
          '#ee6666',
          '#91cc75',
          '#cccccc',
        ],
        data: [
          { value: 335, name: "White" },
          { value: 310, name: "Blue" },
          { value: 234, name: "Black" },
          { value: 135, name: "Red" },
          { value: 210, name: "Green" },
          { value: 24, name: "Colorless" }
        ],
        emphasis: {
          itemStyle: {
            shadowBlur: 10,
            shadowOffsetX: 0,
            shadowColor: "rgba(0, 0, 0, 0.5)"
          }
        }
      }
    ]
  });
</script>

<style scoped>
  .chart {
    height: 400px;
  }
</style>
