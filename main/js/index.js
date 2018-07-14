
    function getMsg(This, category) {
        if(!category){
            sessionStorage.setItem('category','__all__');  
            category="__all__";
            $('.__all__').addClass('active');
        }
        if(This=='change'){
            var active='.'+sessionStorage.getItem('category');
             $(active).addClass('active');
             console.log('刷新了')
        }
        if (This && This!='change' ) {
            This.addClass('active').siblings().removeClass('active');
            sessionStorage.setItem('category', category);
            $('.news-list').html('');
        }
        var category = category;
        $.ajax('https://m.toutiao.com/list/?tag='+category+'&ac=wap&count=20&format=json_raw&as=A1057B7498F022B&cp=5B48E072120B3E1&min_behot_time=0&_signature=Adjm6AAAWpZdtEkAA2ECRwHY5v', {
            dataType: 'jsonp',
            success: function(res) {
                console.log(res.data);                 
                for (var i in res.data) {
                    if (res.data[i].image_list[0]) {
                        res.data[i].image_url = res.data[i].image_list[0].url;
                    }
                    if (res.data[i].image_url) {
                        res.data[i].image_url =res.data[i].image_url;
                    }
                    else if(!res.data[i].image_url && !res.data[i].image_list[0]){
                        res.data[i].image_url ='img/logo.png';  
                    }
                    if (res.data[i].abstract == undefined) {
                        res.data[i].abstract = '暂无信息';
                    }if (res.data[i].comment_count == undefined) {
                        res.data[i].comment_count = '0';
                    }
                    $('.news-list').append(`<div class="news-list-item clearfix">
                    <div class="col-xs-5">
                            <img src="${res.data[i].image_url}">
                            </div>
                            <div class="col-xs-7">
                            <a  target=_blank href=${res.data[i].share_url} class="title">${res.data[i].title}</a>
                            <div class="info">
                            <span><span class="avatar"><img src="img/logo.jpg" ></span> ${res.data[i].source}</span> ⋅
                          
                            <span> ${res.data[i].comment_count}条评论</span>
                             <span>${res.data[i].datetime}</span>
                            </div>
                    </div> 
                 </div>`)
                }

            }
        })
    }
 getMsg('change',sessionStorage.getItem('category'));
   $(function(){ 
    // document.documentElement.scrollTop=sessionStorage.getItem('s');
    $('.navBar li').click(function(e){
        e.preventDefault();
    })
    // $('.news-list').on('click','div',function(){
        // sessionStorage.setItem('s',$(this).offset().top);
    // })
    $('.__all__').click(function() {
        getMsg($(this), '__all__');
    })
    $('.news_sports').click(function() {
        getMsg($(this), 'news_sports');
    })
    $('.news_tech').click(function() {
        getMsg($(this),  'news_tech');
    })
    $('.news_entertainment').click(function() {
        getMsg($(this), 'news_entertainment');
    })
    $('.news_game').click(function() {
        getMsg($(this),  'news_game');
    })
    $('.news_finance').click(function() {
        getMsg($(this),  'news_finance');
    })
    $('.news_hot').click(function() {
        getMsg($(this),  'news_hot');
    })
    $('.news_car').click(function() {
        getMsg($(this), 'news_car');
    })

    var hei = document.documentElement.clientHeight;
    console.log(hei);
    $(document).scroll(function() {
        if (Math.ceil(hei + $(document).scrollTop()) === document.documentElement.scrollHeight) {
              console.log('到底了')
            var category = sessionStorage.getItem('category');
            getMsg('',category);
        }
        // console.log(Math.ceil(hei + $(document).scrollTop()));
        // console.log(document.documentElement.scrollHeight);

    })
    $.ajax('https://www.toutiao.com/api/pc/hot_gallery/?widen=1', {
        dataType: 'jsonp',
        success(res) {
            var str = '';
            for (var i in res.data) {
                str = str + `<div class="list">
                            <div class="item">
                             <div>
                                  <img src='http://${res.data[i].cover_image_url}'>
                              </div>
                                <div class="title"><a target=_blank href=https://www.toutiao.com/api/pc${res.data[i].article_url} >${res.data[i].title}</a></div>
                                <div class="desc">15k阅读 1k评论</div>
                            </div>
                </div>`
            }
            $('.hot-news').html(str);
            console.log(res.data);
        }
    })
    $('#gotoTop').click(function() {
        var timer = setInterval(function() {
       document.documentElement.scrollTop= document.documentElement.scrollTop-120;
            if (document.documentElement.scrollTop<= 0)
                clearInterval(timer);
        },20)
    })
    // var gotoTop=document.getElementById('#gotoTop');
    //    gotoTop.ontouchstart=function() {
    //     console.log(1);
    //     var timer = setInterval(function() {
    //    document.documentElement.scrollTop= document.documentElement.scrollTop-120;
    //         if (document.documentElement.scrollTop<= 0)
    //             clearInterval(timer);
    //     },20)
    // }
})
