<template>
	<v-container class="black" fluid px-0>
		<v-sheet class="black white--text my-10 mx-auto" v-for="i in len" :key="i" max-width="750px">
			<v-img :src="require('../assets/Story'+i+'.jpg')" class="my-16" eager/>
		</v-sheet>
	</v-container>
</template>

<script>
export default {
	name: "Story",
	data: () => ({
		len: 0,
	}),
	methods: {
		piclen() {
			const illustrations = require.context("../assets/", false, /^.*\.jpg$/);
			this.len = illustrations.keys().length;
		},
	},
	created() {
		this.piclen();
	},
};
</script>
