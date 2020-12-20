<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- Vue.js -->
<script src="https://cdn.jsdelivr.net/npm/vue@2.6.12/dist/vue.js"></script>
<!-- 引入样式 -->
<link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
<!-- 引入组件库 -->
<script src="https://unpkg.com/element-ui/lib/index.js"></script>

<style>


#gotop {
    position:fixed;
    z-index:90;
    right:30px;
    bottom:31px;
    display:none;
    width:50px;
    height:50px;
    color:#fff;
    background:#000000;
    opacity: 0.5;
    line-height:50px;
    border-radius:50%;
    transition:all 0.5s;
    text-align: center;
    box-shadow: 0 2px 5px 0 rgba(0,0,0,0.16), 0 2px 10px 0 rgba(0,0,0,0.12);
}

</style>
</head>
<body>
	<section class="banner-area relative" id="home">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div class="row d-flex align-items-center justify-content-center">
				<div class="about-content col-lg-12">
					<h1 class="text-white">得藝洋行</h1>
					<p class="text-white link-nav">
						<a href="index.html">首頁 </a> <span class="lnr lnr-arrow-right"></span>
						<a href="<c:url value='/14/shopListController.ctrl' />"> 洋行</a>
					</p>
				</div>
			</div>
		</div>
	</section>
<div class="container">
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div>1</div>
<div><b class="down">hi</b></div>
<div class="end" id="end"></div>

</div>
	<a href="https://www.blogger.com/blogger.g?blogID=2031514508322140995#" id="gotop" >
   <i class="fas fa-chevron-up"></i>
   </a>
<script>
var flag = false;
var last=$("body").height()-$(window).height()

if($(window).scrollTop() < last){
	
	flag= true;
}

$(window).scroll(function(){
	
	
    
    if($(window).scrollTop() >= last){
    	if(flag = true){
    		
    		
    $(".down").hide()
    $(".end").append("<br> <b>新的字串</b>.");
    
        $.ajax({
            type:"get",
            url:"/Art/14/getSubView",
            dataType : 'html',   
            success:function(page){
//             	alert(page)
            	$("#end").append(page);
            	
//             	 $(".end").append('<br>page');
//             	 document.write(page);
//             	 document.getElementById('end').innerHTML = page
					
            },
            error:function(){
                alert("failure");
            }
        });
    }
    	
    	
    

    }
})

$(function() {
    /* 按下GoTop按鈕時的事件 */
    $('#gotop').click(function(){
        $('html,body').animate({ scrollTop: 0 }, 'slow');   /* 返回到最頂上 */
        return false;
    });
    
    /* 偵測卷軸滑動時，往下滑超過400px就讓GoTop按鈕出現 */
    $(window).scroll(function() {
//     	alert('up')
        if ( $(this).scrollTop() > 400){
            $('#gotop').fadeIn();
        } else {
            $('#gotop').fadeOut();
        }
    });
});
</script>
</body>
</html>