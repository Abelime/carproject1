<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
    html,
    body {
        width: 100%;
        height: 100%;
    }

    * {
    
        margin: 0;
        padding: 0;
    }

    header {
        width: 100%;
        height: 15%;
        line-height: 100px;
    }

    header p {
        color: blue;
        padding-left: 25px;
        font-size: 50px;
    }

    #head {
        float: left;
    }
    
    #head p a{
        text-decoration: none;
    }
    #form {
        float: right;
    }

    #form a {
        text-decoration: none;
    }

    nav {
        width: 100%;
        height: 5%;
        background-color: rgb(106, 160, 182);
        line-height: 50px;
        padding-left: 50px;
        margin-bottom: 15px;
        clear: both;
    }

    #li ul {
        text-align: left;

    }

    #li ul li {
        list-style: none;
        display: inline;
        padding-left: 20px;
    }

    #li ul li a {
        text-decoration: none;
        color: black;
        font-weight: bolder;
    }

    section {
        width: 80%;
        height: 70%;
        float: left;
        margin-top: 5px;
        margin-bottom: 5px;

    }
    section p{
        padding-left: 10px;
    }
   
    section img {
        width: 25%;
        height: 50%;
        padding-left: 10px;
    }


    aside {
        width: 20%;
        height: 70%;
        float: right;
        margin-top: 5px;
    }

    #button ul {
        list-style: none;
        text-align: center;
    }

    footer {
        width: 100%;
        height: 5%;
        background-color: gray;
        clear: both;
        line-height: 20px;
        margin-top: 15px;
    }

    footer img {
        float: right;
    }


    hr {
        border-color: silver;
        background-color: silver;
        clear: both;
        height: 2px;

    }


    #foot {
        padding-left: 40px;
        padding-top: 15px;
    }
    
#logo {
	color: blue;
	padding-left: 25px;
	font-size: 50px;
}
#logo a{
	text-decoration: none;
}

.right {
	float: right;
}
</style>

<body>
	<header>
		<%
		String checkName = "";
		checkName = (String) session.getAttribute("s_NAME");
		if (checkName == null) {
		%>
		<div id="head">
			<p>
				<a href="index.jsp">카센터(붕붕이 나라)</a>
			</p>
		</div>
		<div id="form">
			<form method="post" action="login.jsp">
				<fieldset>
					회원ID:<input type="text" name="id" size="10"> 비밀번호:<input
						type="password" name="pwd" size="10"> <input type="submit"
						value="로그인"> <a href="form.jsp">|회원가입</a>
				</fieldset>
			</form>
		</div>
		<%
		} else {
		session.setMaxInactiveInterval(500);
		%>
		<a id="logo" href="index.jsp">카센터(붕붕이 나라)</a> <span class="right"
			style="padding: 30px10px;"> <%=checkName%>님 환영합니다. <a
			href="logout.jsp">logout</a> <a href="form.jsp">회원가입</a>
		</span>
		<%
		}
		%>

	</header>
    <nav id="li">
        <ul>
            <li><a href="#">회사소개</a></li>
            <li><a href="information.jsp">부품정보</a></li>
            <li><a href="list.jsp">고객정보</a></li>
            <li><a href="#">견적관리</a></li>
            <li><a href="#">정비이력</a></li>
            <li><a href="#">게시판</a></li>
        </ul>
    </nav>
    <hr>
    <section>
            <p style="font-size: 30;"> 반갑습니다.</p><br>
            <p>카센터 붕붕나라입니다.</p><br>
            <hr>
           <img src="img/car.png"  align="left">안녕하십니까<br>
           카센터<span style="color: red;"> 붕붕이나라</span>는 부산시 부산진구 양정동에<br>
           위치하고 있습니다.<br>
           저희 붕붕이나라는 곡객의 다양한 요구에 부합되는<br>
           최고의 서비스와 경쟁력 있는 가격으로 고객 만족을<br>
           실현하기 위해 모든 임직원이 다함께 노력할 것을<br>
           약속 드립니다.<br>
           항상 한발 앞서가는 곡개만족의 경영을 실천하며<br>
           고객과의 약속을 가장 중요시 하겠습니다<br>
           <p>고객 여러분의 끊임없는 격려와 관심으로 성원해 주시길 부탁드립니다.</p>
           <br>
           <h3 style="color: blue;">감사합니다</h3>

             
           

    </section>

    <aside id="button">
        <ul>
            <li><input type="button" value="고객정보"></li>
            <li><input type="button" value="정비등록"></li>
            <li><input type="button" value="부품등록"></li>
            <li><input type="button" value="현재위치"></li>
        </ul>
    </aside>
    <hr>
    <footer>
        <div id="foot">
            <h4> Copyright(c) 2021 YangJung All rights reserved</h4>
        </div>
        <div id="footimg" >
       
            <img src="img/facebook.gif">
            <img src="img/twitter.gif">
            <img src="img/googleplus-icon.png" width="45px" height="45px">

    </div>
    </footer >

</body>

</html>
   