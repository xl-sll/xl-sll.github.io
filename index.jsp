<!DOCTYPE html>
<html lang="cn">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, minimal-ui">
    <title>xunlu</title>

	<style type="text/css">
		#tx{
			margin:2% auto;
			width:100%;
			height:100%;
			background-color:#262d3a;
			/* 设置过渡属性 */
			-webkit-transition-property:all;
			-moz-transition-property:all;
			-o-transition-property:all;
			transition-property:all;
			/* 设置过渡时间 */
			-webkit-transition-duration:100s;
			-moz-transition-duration:100s;
			-o-transition-duration:100s;
			transition-duration:100s;
			/* 设置过渡方式 */
			-webkit-transition-timing-function:linear;
			-moz-transition-timing-function:linear;
			-o-transition-timing-function:linear;
			transition-timing-function:linear;
		}
		#tx div:hover  {
		background-color:#262d3a;
			/* 设置变形：旋转240deg */
			-webkit-transform:rotate(350deg);
			-moz-transform:rotate(350deg);
			-o-transform:rotate(350deg);
			transform:rotate(350deg);
		}
	</style>
    	<link rel="stylesheet" href="css/bootstrap.min.css">
    	<!--<link rel="stylesheet" href="css/font-awesome.min.css">-->
    	<link rel="stylesheet" href="css/animate.css">
    	<link rel="stylesheet" href="css/templatemo_style.css">
	<link rel="icon" href="picture/favicon.ico">
    	<script src="https://cdn.jsdelivr.net/npm/bluebird@3/js/browser/bluebird.min.js"></script>
    	<script src="https://cdn.jsdelivr.net/npm/whatwg-fetch@2.0.3/fetch.min.js"></script>
    	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    	
	<script>
    		fetch('https://v1.hitokoto.cn')
        		.then(function (res){
        		return res.json();
        		})
        		.then(function (data) {
        		var hitokoto = document.getElementById('hitokoto');
        		hitokoto.innerText = data.hitokoto;
        		})
        		.catch(function (err) {
        		console.error();
        		})
    	</script>

	<script language=JavaScript>
		var caution = false
		function setCookie(name, value, expires, path, domain, secure) {
		var curCookie = name + "=" + escape(value) +
		((expires) ? "; expires=" + expires.toGMTString() : "") +
		((path) ? "; path=" + path : "") +
		((domain) ? "; domain=" + domain : "") +
		((secure) ? "; secure" : "")
		if (!caution || (name + "=" + escape(value)).length <= 4000)
		document.cookie = curCookie
		else
		if (confirm("Cookie exceeds 4KB and will be cut!"))
		document.cookie = curCookie
		}
		function getCookie(name) {
		var prefix = name + "="
		var cookieStartIndex = document.cookie.indexOf(prefix)
		if (cookieStartIndex == -1)
		return null
		var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex + prefix.length)
		if (cookieEndIndex == -1)
		cookieEndIndex = document.cookie.length
		return unescape(document.cookie.substring(cookieStartIndex + prefix.length, cookieEndIndex))
		}
		function deleteCookie(name, path, domain) {
		if (getCookie(name)) {
		document.cookie = name + "=" +
		((path) ? "; path=" + path : "") +
		((domain) ? "; domain=" + domain : "") +
		"; expires=Thu, 01-Jan-70 00:00:01 GMT"
		}
		}
		function fixDate(date) {
		var base = new Date(0)
		var skew = base.getTime()
		if (skew > 0)
		date.setTime(date.getTime() - skew)
		}
		var now = new Date()
		fixDate(now)
		now.setTime(now.getTime() + 365 * 24 * 60 * 60 * 1000)
		var visits = getCookie("counter")
		if (!visits)
		visits = 1
		else
		visits = parseInt(visits) + 1
		setCookie("counter", visits, now)
		document.write(visits)
	</script>
	
</head>

<body oncontextmenu="return false" onselectstart="return false" ondragstart="return false">
	<header class="site-header container animated fadeInDown">
		<div class="header-wrapper"></div>
	</header>
	<div id="menu-container">
		<div id="menu-1" class="homepage home-section container">
			<div class="home-intro text-center" >
				<div id="tx"><div style="width:10%;margin:auto 45%;"><img src="./picture/me.png" style="width:100%;border-radius:10%;">
				</div>
			</div>
				<h2>XunLu</h2>
				<H5 class="animated fadeInRight">在无限大的空间中，再怎么小的概率事件，也一定会在某处发生。<br />这里会包括无数个适合居住的行星，其中包括无数多个地球，上面住着外貌、名字和记忆与你不谋而合的人，<br />正以你一生所做的众多选择，上演着每一种可能的排列组合。 <br/> </H5><p>&nbsp;</p>
				<H3 class="welcome-title animated fadeInLeft">Don't worry , be happy !</H3>
			</div>
       		<div style="border-bottom: 2px solid silver;"></div>
       		<br /><br />
	</div>
	<span class="border-top"></span>
	<span class="border-left"></span>
	<span class="border-right"></span>
	<span class="border-bottom"></span>
		<%
		Object obj =application.getAttribute("counter");
		if(obj==null){
		    application.setAttribute("counter", new Integer(1));
		    out.print("该页面已被访问1次！");
		}else{
		    int count=Integer.parseInt(obj.toString());
		    count++;
		    out.print("该页面已被访问了"+count+"次！");
		    application.setAttribute("counter", count);
		}
		%>
</body>
</html>
