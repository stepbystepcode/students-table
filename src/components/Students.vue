<template>
  <ul>
    <li></li>
    <li></li>
    <li></li>
    <li v-for="(student,index) in this.studentsList" :key="student.value" class="student">
      <img :src="require(`../assets/img/${index+1}.jpg`)" alt="" /><span
        >{{ student }}</span
      >
    </li>
        <!-- <li v-for="(student, index) in this.studentsList" :key="student.value">
      <img :src="require(`../assets/img/${this.numberList[index]}.jpg`)" alt="" /><span
        >{{ student }}</span
      >
    </li> -->
  </ul>
</template>

<script lang="ts">
import { defineComponent } from "vue";

export default defineComponent({
  name: "Students",
  data() {
    return {
      numberList: [
        4, 5, 2,6,  12, 25, 9, 3, 15, 10, 20, 17, 43, 19, 14, 28, 34, 27, 13, 7,
        22, 39, 8, 11, 44, 45, 37, 42, 36, 35, 38, 29, 18, 26, 24, 16, 23, 21,
        1, 33, 41, 30, 46, 31, 32, 40,
      ],
      //cbeda
      studentsList: [
        "张耘溪",
        "运沛然",
        "吴梁睿",
        "马奕涵",
        "包尔豪",
        "席星野",
        "张知航",
        "胡家熙",
        "杜雨航",
        "李仰震",
        "肖正阳",
        "黄嘉祺",
        "王尉沣",
        "毕云飞",
        "贾惠翔",
        "杨毅群",
        "那博宇",
        "任津喆",
        "魏吉辰",
        "张鎏麟",
        "张展赫",
        "李京",
        "李燕坤",
        "杨盛钧",
        "张浩",
        "张竣词",
        "郭昱嘉",
        "刘宏坤",
        "齐婧然",
        "陶雨霏",
        "王曼伊",
        "孟慧",
        "盖君仪",
        "臧浩汐",
        "石怡",
        "何雨恬",
        "牟可欣",
        "谭思宇",
        "路欣怡",
        "田孝娜",
        "孟子钧",
        "吕晴",
        "何诗楠",
        "严佳兴",
        "孙佳忆",
        "刘家优",
      ],
    };
  },
  mounted() {
    let li = document.querySelectorAll(".student");
    for (let i = 0; i < li.length; i++) {
      let num: number = this.numberList[i];
      // eslint-disable-next-line @typescript-eslint/ban-ts-comment
      //@ts-ignore
      li[num-1].style.order = i.toString();
    }
      // let num: number = this.numberList[0];
      // li[num-1].style.order = 0;
    document.querySelectorAll("img")[5].style.visibility="hidden";
    
  },
  methods: {},
});
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
ul {
  display: flex;
  flex-wrap: wrap;
}
li {
  display: inline-flex;
  border: 1px solid black;
  width: 100px;
  height: 140px;
  flex-wrap: wrap;
  justify-content: center;
}
img {
  max-width: 100%;
  height: 121.983px;
  filter: brightness(130%);
}
span {
  display: block;
}
.first{
  order: -1!important;
}
html{
   width: 1150px;
   height: 1627px;
   border: 1px #000 solid;
 }
 body{
   max-width: 476px!important;
 }
</style>
