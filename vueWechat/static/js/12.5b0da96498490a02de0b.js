webpackJsonp([12],{"1rN3":function(t,a){t.exports={data:[{letter:"A",list:[{name:"艾尔·霍福德",wechatNum:"Al Horford",area:"多米尼加共和国",avator:"https://ss2.bdstatic.com/70cFvnSh_Q1YnxGkpoWK1HF6hhy/it/u=3460168533,1868340771&fm=26&gp=0.jpg"},{name:"安东尼·戴维斯",wechatNum:"Anthony Davis",area:"美国 伊利诺伊州 芝加哥",avator:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561108922451&di=6f4e28dfcd2fd61f68dce202e6c4d376&imgtype=0&src=http%3A%2F%2Fimg.xinxic.com%2Fimg%2Fe11edfd130c3d5b3.jpg"}]},{letter:"B",list:[{name:"本·西蒙斯",wechatNum:"Ben Simmons",area:"澳大利亚 墨尔本",avator:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561108866355&di=67f20843f3f6a84982c33df91957a0d0&imgtype=0&src=http%3A%2F%2Fimg.mp.itc.cn%2Fupload%2F20160613%2Fee6fe79971c14b78839d4322a486f520_th.jpg"},{name:"布雷克·格里芬",wechatNum:"Blake Griffin",area:"美国 俄克拉何马州 俄克拉荷马城",avator:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561108922453&di=53ee1f8a77f8ed391e0399ccc07cf8c1&imgtype=0&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180802%2F01%2F1533143125-gQhFCIlHcM.jpg"}]},{letter:"D",list:[{name:"德马库斯·考辛斯",wechatNum:"DeMarcus Cousins",area:"美国 阿拉巴马州 莫比尔",avator:"https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2396606254,1392918776&fm=26&gp=0.jpg"}]},{letter:"G",list:[{name:"戈登·海沃德",wechatNum:"Gordon Hayward",area:"美国 印第安纳州 印第安纳波利斯",avator:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561109599608&di=2344965de9b5534ef66e40b2ccd2e272&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2018%2F04%2F240950148406.jpg"}]},{letter:"J",list:[{name:"加里·克拉克",wechatNum:"Gary Clark",area:"美国 北卡罗来纳州 克莱顿",avator:"~img/images/addressBook/user1.jpg"}]}]}},JgQL:function(t,a,s){t.exports=s.p+"static/img/user1.3075c26.jpg"},ecxZ:function(t,a,s){"use strict";Object.defineProperty(a,"__esModule",{value:!0});var e=s("XvV0"),i=(s("1rN3"),{name:"addressBook",data:function(){return{addressBookTop:0,friends:"",indexList:["↑","☆","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","#"]}},methods:{goTop:function(){document.documentElement.scrollTop=document.body.scrollTop=0},closeHeaderPop:function(){this.$refs.weHeader.isShow=!1},demo:function(){return this.timeOutEvent=setTimeout(function(){console.log(1)},500),!1},touchEnd:function(){return clearTimeout(this.timeOutEvent),!1}},mounted:function(){for(var t=this,a=document.querySelectorAll(".adBook-user"),s=0;s<a.length;s++)a[s].onclick=function(){if(!t.$refs.weHeader.isShow){var a=this.children[1].innerHTML,s=this.getAttribute("wechatNum"),e=this.getAttribute("area"),i=this.children[0].getAttribute("src"),r=this.children[1].getAttribute("realName"),o=this.children[1].getAttribute("say"),c=this.children[1].getAttribute("chatTime"),n=this.children[1].getAttribute("sex");sessionStorage.setItem("nowChatNum",s),e&&sessionStorage.setItem("nowUserArea",e),o&&sessionStorage.setItem("nowCuserSay",o),r?(sessionStorage.setItem("nowChatUser",r),sessionStorage.setItem("nowChatNickname",a)):sessionStorage.setItem("nowChatUser",a),c&&sessionStorage.setItem("nowChatTime",c),sessionStorage.setItem("nowUserAvator",i),sessionStorage.setItem("nowUserSex",n),t.$router.push("userInfo")}}},activated:function(){this.closeHeaderPop();var t=sessionStorage.getItem("addressBookTop");t&&(document.documentElement.scrollTop=document.body.scrollTop=t),window.onscroll=function(){var t=document.documentElement.scrollTop||document.body.scrollTop;sessionStorage.setItem("addressBookTop",t)}},deactivated:function(){window.onscroll=null},beforeRouteEnter:function(t,a,s){"addressBook"===t.name?(sessionStorage.removeItem("nowChatUser"),sessionStorage.removeItem("nowUserAvator"),sessionStorage.removeItem("nowUserArea"),sessionStorage.removeItem("nowCuserSay"),sessionStorage.removeItem("nowChatNickname"),sessionStorage.removeItem("nowChatNum"),sessionStorage.removeItem("nowChatTime"),sessionStorage.removeItem("nowUserSex"),s()):s()},beforeRouteLeave:function(t,a,s){if(this.$refs.weHeader.isShow){var e=sessionStorage.getItem("addressBookTop");this.closeHeaderPop(),setTimeout(function(){document.documentElement.scrollTop=document.body.scrollTop=e,s(!1)})}else s()},components:{"we-header":e.a}}),r={render:function(){var t=this,a=t.$createElement,e=t._self._c||a;return e("div",{attrs:{id:"addressBook"},on:{click:t.closeHeaderPop,touchmove:function(a){return t.$refs.weHeader.isShow&&a.preventDefault()}}},[e("van-index-bar",{attrs:{"index-list":t.indexList,"sticky-offset-top":500}},[e("van-index-anchor",{staticClass:"none",attrs:{index:"↑"},nativeOn:{click:function(a){return t.goTop(a)}}}),t._v(" "),e("we-header",{ref:"weHeader",attrs:{title:"通讯录"}}),t._v(" "),e("ul",{staticClass:"addressTop"},[e("li",{on:{click:function(a){return t.$router.push("/newFriends")}}},[e("span",{staticClass:"newFriend"}),t._v(" "),e("div",[t._v("新的朋友")])]),t._v(" "),e("li",{on:{click:function(a){return t.$router.push("/groupChat")}}},[e("span",{staticClass:"users"}),t._v(" "),e("div",[t._v("群聊")])]),t._v(" "),e("li",{on:{click:function(a){return t.$router.push("/label")}}},[e("span",{staticClass:"label"}),t._v(" "),e("div",[t._v("标签")])]),t._v(" "),e("li",{on:{click:function(a){return t.$router.push("/publicNum")}}},[e("span",{staticClass:"publicNum"}),t._v(" "),e("div",[t._v("公众号")])])]),t._v(" "),e("van-index-anchor",{staticClass:"none",attrs:{index:"☆"}}),t._v(" "),e("van-index-anchor",{attrs:{index:"A"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 波士顿",wechatNum:"A13-123456"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561442615598&di=10b5dd78ee1836106506a82638423a9e&imgtype=0&src=http%3A%2F%2Fhbimg.b0.upaiyun.com%2Fcd56ca327c1354f49585f1f7935e388782202d61d5f2b-TH2AiZ_fw658",alt:""}}),t._v(" "),e("p",{attrs:{say:"1.~/生活赋予我们一种巨大的和无限高贵的礼品，这就是青春：充满着力量，充满着期待志愿，充满着求知和斗争的志向，充满着希望信心和青春。",chatTime:"2018年1月1日 10:21",sex:"男"}},[t._v("alive 爱默生")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"多米尼加共和国",wechatNum:"Al Horford"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562058182683&di=4113fc1d0734cfacf68acee223fa00b1&imgtype=0&src=http%3A%2F%2Fimg.cctv5.name%2F2017%2F0126%2F201701261303004379.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("艾尔·霍福德")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 伊利诺伊州 芝加哥",wechatNum:"Anthony Davis"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1955427322,314980121&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("安东尼·戴维斯")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"B"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"澳大利亚 墨尔本",wechatNum:"Ben Simmons"}},[e("img",{attrs:{src:"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=66337563,2850583475&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("本·西蒙斯")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 俄克拉何马州 俄克拉荷马城",wechatNum:"Blake Griffin"}},[e("img",{attrs:{src:"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=1788139655,1531814201&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("布雷克·格里芬")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"D"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 阿拉巴马州 莫比尔",wechatNum:"DeMarcus Cousins"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1687172755,707881683&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("德马库斯·考辛斯")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国",wechatNum:"D_Jorden"}},[e("img",{attrs:{src:"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3766337223,1802253062&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("德安德鲁·乔丹")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"G"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 印第安纳州 印第安纳波利斯",wechatNum:"Gordon Hayward"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561109599608&di=2344965de9b5534ef66e40b2ccd2e272&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2018%2F04%2F240950148406.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("戈登·海沃德")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 路易斯安那州 哈维",wechatNum:"Greg Monroe"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561109599606&di=e53c2fdcc23d8252427b4a1895bb779c&imgtype=0&src=http%3A%2F%2Fimg.duoziwang.com%2F2018%2F04%2F2411122426449.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("格雷格·门罗")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"J"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"加拿大 安大略省 基奇纳",wechatNum:"Jamal Murray"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=1788528043,1860833131&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("贾马尔·穆雷")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"K"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 华盛顿 哥伦比亚特区",wechatNum:"Kevin Durant"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=4242320896,2208537661&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("凯文·杜兰特")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 加利福尼亚州 河边市 ",wechatNum:"Kawhi Leonard"}},[e("img",{attrs:{src:"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=2014450203,716813836&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("科怀·伦纳德")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"L"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 俄亥俄州 阿克伦",wechatNum:"LeBron James"}},[e("img",{attrs:{src:"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=3303687341,3432700559&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("勒布朗·詹姆斯")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 加利福尼亚州 长滩",wechatNum:"Russell Westbrook"}},[e("img",{attrs:{src:"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=4122588525,3991972872&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("拉塞尔·维斯布鲁克")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"M"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 印第安纳州 印第安纳波利斯",wechatNum:"Mike Conley"}},[e("img",{attrs:{src:"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=3980593605,1315443819&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("迈克·康利")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 宾夕法尼亚州 费城",wechatNum:"Markieff Morris"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2834570011,1216996104&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("马基夫·莫里斯")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"印度",wechatNum:"A11-123456"}},[e("img",{attrs:{src:"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=3762095652,4288929885&fm=26&gp=0.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男",realName:"斯里兰卡",say:"世界上一成不变的东西，只有“任何事物都是在不断变化的”这条真理。",chatTime:"5月13日 19:21"}},[t._v("名人-斯里兰卡")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"英国",wechatNum:"A11-123456"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1561442615600&di=ea7581291a951a19a166b1e8ad0fbc6d&imgtype=0&src=http%3A%2F%2Fb.zol-img.com.cn%2Fsoft%2F6%2F571%2FcepyVKtIjudo6.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男",realName:"约翰·洛克",say:"1.~/人生的磨难是很多的，所以我们不可对于每一件轻微的伤害都过于敏感。在生活磨难面前，精神上的坚强和无动于衷是我们抵抗罪恶和人生意外的最好武器。",chatTime:"5月13日 19:21"}},[t._v("名人-洛克")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"N"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"塞尔维 亚松博尔",wechatNum:"Nikola Jokic"}},[e("img",{attrs:{src:"https://ss0.baidu.com/6ONWsjip0QIZ8tyhnq/it/u=1214087979,4229679237&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("尼古拉·约基奇")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 马萨诸塞州 黑弗里尔",wechatNum:"Noah Vonleh"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562652509&di=89e91937f9b4ae005fa6e734b8ce5246&imgtype=jpg&er=1&src=http%3A%2F%2Fimg1.gtimg.com%2Fsports%2Fpics%2Fhv1%2F19%2F27%2F1637%2F106452829.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("诺阿·冯莱")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"O"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 密苏里州 圣路易斯",wechatNum:"Otto Porter"}},[e("img",{attrs:{src:s("JgQL"),alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("奥托·波特")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"英国 伦敦",wechatNum:"OG Anunoby"}},[e("img",{attrs:{src:"https://cms-bucket.nosdn.127.net/sports/basketball/nba/player/1000000118.jpg?imageView&quality=100&thumbnail=65y85",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("OG·阿奴诺比")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"P"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 密苏里州 圣路易斯",wechatNum:"Patrick McCaw"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562057817502&di=20c2ce3c30d5a99677909b37a7325244&imgtype=0&src=http%3A%2F%2F09imgmini.eastday.com%2Fmobile%2F20190528%2F20190528185643_b7882553351257e015a00847a1577b6a_2_mwpm_03201609.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("帕特里克·麦考")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"Q"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 华盛顿州 奇兰",wechatNum:"Joe Harris"}},[e("img",{attrs:{src:s("JgQL"),alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("乔·哈里斯")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"美国 马里兰州 海厄茨维尔",wechatNum:"Quinn Cook"}},[e("img",{attrs:{src:s("JgQL"),alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("奎因·库克")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"R"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"中国 上海",wechatNum:"wxid_qa5sd2314sdaw1sd"}},[e("img",{attrs:{src:"https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1265953457,2908351700&fm=26&gp=0.jpg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"女"}},[t._v("Ross Tallnama")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"S"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 新泽西 内瓦克",wechatNum:"Shaquille O'Neal"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2230420759,767143107&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("沙奎尔·奥尼尔")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"T"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"中国 北京",wechatNum:"ph_sunshine"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562744747&di=108416fd0940e8481f857b122c2fecda&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201507%2F27%2F20150727102707_PNjcL.thumb.700_0.jpeg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"女"}},[t._v("T1")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"W"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 马里兰州 上马尔伯勒",wechatNum:"Victor Oladipo"}},[e("img",{attrs:{src:s("JgQL"),alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("维克多·奥拉迪波")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"Y"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"中国 上海市 徐汇区",wechatNum:"Yao Ming"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=4052411722,2540960335&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("姚明")])]),t._v(" "),e("div",{staticClass:"adBook-user",attrs:{area:"希腊 雅典",wechatNum:"Giannis Antetokounmpo"}},[e("img",{attrs:{src:"https://ss2.baidu.com/6ONYsjip0QIZ8tyhnq/it/u=2662246967,1705979247&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("扬尼斯·阿德托昆博")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"Z"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{area:"美国 华盛顿州 博塞尔",wechatNum:"Zach LaVine"}},[e("img",{attrs:{src:"https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=2455025698,699907600&fm=58",alt:""}}),t._v(" "),e("p",{attrs:{sex:"男"}},[t._v("扎克·拉文")])])]),t._v(" "),e("van-index-anchor",{attrs:{index:"#"}}),t._v(" "),e("div",[e("div",{staticClass:"adBook-user",attrs:{wechatNum:"sa57da5sdsa6_s12"}},[e("img",{attrs:{src:"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1562744767&di=2ef9cb3b663810cb089479371ac2aff8&imgtype=jpg&er=1&src=http%3A%2F%2Fb-ssl.duitang.com%2Fuploads%2Fitem%2F201510%2F17%2F20151017131527_RPsiB.thumb.700_0.jpeg",alt:""}}),t._v(" "),e("p",{attrs:{sex:"女"}},[t._v("12345")])])]),t._v(" "),e("p",{staticClass:"userCount"},[t._v("42位联系人")])],1)],1)},staticRenderFns:[]};var o=s("VU/8")(i,r,!1,function(t){s("vKzS")},"data-v-2a34b684",null);a.default=o.exports},vKzS:function(t,a){}});
//# sourceMappingURL=12.5b0da96498490a02de0b.js.map