webpackJsonp([1],{"947H":function(t,e){},"9dYX":function(t,e){},K7hQ:function(t,e){},KxUJ:function(t,e,a){t.exports=a.p+"static/img/yidong.4d53cab.jpg"},NHnr:function(t,e,a){"use strict";Object.defineProperty(e,"__esModule",{value:!0});var n=a("xd7I"),s={name:"App",data:function(){return{active:"home",scroll:scroll}},methods:{clickItem:function(t){this.$router.push("/"+t)}}},i={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"app"}},[a("transition",{attrs:{name:"router-fade",mode:"out-in"}},[a("keep-alive",[a("router-view")],1)],1),t._v(" "),a("van-tabbar",{attrs:{"active-color":"#07c160","inactive-color":"#000"},nativeOn:{click:function(e){return t.clickItem(t.active)}},model:{value:t.active,callback:function(e){t.active=e},expression:"active"}},[a("van-tabbar-item",{attrs:{icon:"chat-o",name:"home"}},[t._v("微信")]),t._v(" "),a("van-tabbar-item",{attrs:{icon:"friends-o",name:"addressBook"}},[t._v("通讯录")]),t._v(" "),a("van-tabbar-item",{attrs:{icon:"comment-circle-o",name:"find"}},[t._v("发现")]),t._v(" "),a("van-tabbar-item",{attrs:{icon:"contact",name:"my"}},[t._v("我")])],1)],1)},staticRenderFns:[]};var r=a("C7Lr")(s,i,!1,function(t){a("OjCj")},"data-v-06a1dc45",null).exports,c=a("3XdE"),o={name:"home",data:function(){return{homeTop:0}},activated:function(){var t=sessionStorage.getItem("hTop");t&&(document.documentElement.scrollTop=t),window.onscroll=function(){sessionStorage.setItem("hTop",document.documentElement.scrollTop)}},deactivated:function(){window.onscroll=null}},l={render:function(){this.$createElement;this._self._c;return this._m(0)},staticRenderFns:[function(){var t=this,e=t.$createElement,n=t._self._c||e;return n("div",{attrs:{id:"home"}},[n("header",[n("h3",[t._v("微信\n\t\t\t"),n("div",[n("span",{staticClass:"search"}),t._v(" "),n("span",{staticClass:"add"})])])]),t._v(" "),n("ul",[n("li",[n("img",{attrs:{src:a("z6eN"),alt:""}}),t._v(" "),n("div",{staticClass:"desc"},[n("p",{staticClass:"name"},[t._v("爸爸")]),n("p",{staticClass:"title"},[t._v("描述描述描述")])])]),t._v(" "),n("li",[n("img",{attrs:{src:a("oIWM"),alt:""}}),t._v(" "),n("div",{staticClass:"desc"},[n("p",{staticClass:"name"},[t._v("妈妈")]),n("p",{staticClass:"title"},[t._v("描述描述描述")])])]),t._v(" "),n("li",[n("img",{attrs:{src:a("KxUJ"),alt:""}}),t._v(" "),n("div",{staticClass:"desc"},[n("p",{staticClass:"name"},[t._v("爸爸")]),n("p",{staticClass:"title"},[t._v("描述描述描述")])])]),t._v(" "),n("li",[n("img",{attrs:{src:a("KxUJ"),alt:""}}),t._v(" "),n("div",{staticClass:"desc"},[n("p",{staticClass:"name"},[t._v("张三")]),n("p",{staticClass:"title"},[t._v("描述描述描述")])])]),t._v(" "),n("li",[n("img",{attrs:{src:a("KxUJ"),alt:""}}),t._v(" "),n("div",{staticClass:"desc"},[n("p",{staticClass:"name"},[t._v("李四")]),n("p",{staticClass:"title"},[t._v("描述描述描述")])])])])])}]};var v=a("C7Lr")(o,l,!1,function(t){a("9dYX")},"data-v-76a7d480",null).exports,d={name:"addressBook",data:function(){return{addressBookTop:0}},activated:function(){document.getElementById("addressBook").scrollTop=this.addressBookTop||0},beforeRouteLeave:function(t,e,a){var n=document.getElementById("addressBook");this.addressBook=n.scrollTop||0,a()}},_={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"addressBook"}},[a("p",[t._v("通讯录")]),t._v(" "),a("van-index-bar",[a("van-index-anchor",{attrs:{index:"A"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-index-anchor",{attrs:{index:"B"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-index-anchor",{attrs:{index:"C"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-index-anchor",{attrs:{index:"E"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-index-anchor",{attrs:{index:"F"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-index-anchor",{attrs:{index:"G"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}}),t._v(" "),a("van-cell",{attrs:{title:"文本"}})],1)],1)},staticRenderFns:[]};var p=a("C7Lr")(d,_,!1,function(t){a("wQde")},"data-v-4f5a86a2",null).exports,m={name:"find",data:function(){return{findTop:0}},activated:function(){document.getElementById("find").scrollTop=this.findTop||0},beforeRouteLeave:function(t,e,a){var n=document.getElementById("find");this.findTop=n.scrollTop||0,a()}},u={render:function(){this.$createElement;this._self._c;return this._m(0)},staticRenderFns:[function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{attrs:{id:"find"}},[a("p",[t._v("发现")]),t._v(" "),a("h2",[t._v("1")]),t._v(" "),a("h2",[t._v("2")]),t._v(" "),a("h2",[t._v("3")]),t._v(" "),a("h2",[t._v("4")]),t._v(" "),a("h2",[t._v("5")])])}]};var f=a("C7Lr")(m,u,!1,function(t){a("K7hQ")},null,null).exports,h={name:"my",activated:function(){this.$refs.wrapper.scrollTop=document.documentElement.scrollTop}},x={render:function(){var t=this,e=t.$createElement,a=t._self._c||e;return a("div",{ref:"wrapper",attrs:{id:"my"}},[a("h1",[t._v("my")]),t._v(" "),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")]),a("p",[t._v("我")])])},staticRenderFns:[]};var C=a("C7Lr")(h,x,!1,function(t){a("Qx4I")},null,null).exports;n.a.use(c.a);var g=new c.a({routes:[{path:"/",redirect:"/home"},{path:"/home",name:"home",component:v},{path:"/addressBook",name:"addressBook",component:p},{path:"/find",name:"find",component:f},{path:"/my",name:"my",component:C}]}),b=a("FPcD");a("aRlZ"),a("947H");n.a.use(b.a),n.a.config.productionTip=!1,new n.a({el:"#app",router:g,components:{App:r},template:"<App/>"})},OjCj:function(t,e){},Qx4I:function(t,e){},aRlZ:function(t,e){},oIWM:function(t,e,a){t.exports=a.p+"static/img/home2.fbfc291.jpg"},wQde:function(t,e){},z6eN:function(t,e,a){t.exports=a.p+"static/img/home1.3c5ed65.jpg"}},["NHnr"]);
//# sourceMappingURL=app.be36530ac635c17b2a75.js.map