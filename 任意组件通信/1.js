var datas=[
	{name:'jihonson',age:19},
	{name:'kijsisa',age:20},
]

Vue.component('huahua',{
	template:`
	<div>
		我说：<input v-model='hhsay' @input='changes'>
		<h1>{{hhsay}}</h1>
		<p v-for='i in items'>{{i.name}}</p>
		<button @click='post'>点一下传给朋友值</button>
	</div>
	`,
	methods:{
		changes(){
			//因为$emit是vue中的函数，所以我们要在组件上方实例化一个Vue
			Even.$emit('huahuasay',this.hhsay);
			// 任意组件通信就是先定义一个实例vue,然后当按下时就触发某事件，发送
			//一个事件，并把某一数据当参数

		},
		post(){
			Even.$emit('datas',this.num);
		}

	},
	data(){
		return{
			hhsay:'',items:datas,num:666
		}
	}
})
Vue.component('doudou',{
	template:`
	<div>
	huahua说：{{hhsay}}
	<h2>{{num}}</h2>
	</div>
	`,
	//像$on为什么要写在mounted而不是methods里呢？就是因为这些方法不是主动去调用的
   	//是被动的， 接收数据的
   	mounted(){
		var me=this;//这里的this指的是doudou 
		// 另外需要获得数据的组件，
		//在mounted()组件加载完毕后触发函数里写一个接收$on,里面第一个写接收的函数名
		//第二个参数是回调函数，里面的参数就是发送过来的值，然后进行赋值
		Even.$on('huahuasay',function(data){
			me.hhsay=data;
			//这里如果写this就不是指向doudou,而是Even
		})
		Even.$on('datas',function(data){
			me.num=data;
			//这里如果写this就不是指向doudou,而是Even
		})
		this.$emit('cha','这是子组件给父组件传值的');

	},
	data(){
		return{
			hhsay:'',num:''
		}
	}
})

var Even=new  Vue();
var app=new Vue({
	el:'#app',
	data:{
		title:'+66666'
	},
	methods:{
		showtime(d){
			this.title=d;
		}
	}
})