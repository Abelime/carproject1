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
    section table{
            margin-left: auto; margin-right: auto;
        }
        section form table{
            width: 70%;
            height: 70%;
        }
   
    section img {
        width: 25%;
        height: 50%;
        padding-left: 10px;
    }
    section h1{
        text-align: center;
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
    .btn{
        text-align: center;
    }
    .head{
        text-align: center;
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
            <li><a href="edu.jsp">회사소개</a></li>
            <li><a href="information.jsp">부품정보</a></li>
            <li><a href="list.jsp">고객정보</a></li>
            <li><a href="#">견적관리</a></li>
            <li><a href="#">정비이력</a></li>
            <li><a href="#">게시판</a></li>
        </ul>
    </nav>
    <hr>
    <section>
            <h1>차량 부품 관리</h1>
            <form name="form" method="post" action="part_tbl.jsp">
           <table border="1">
               
                <tr>
                    <td class="head">부품번호</td>
                    <td colspan="3"><input type="text" name="partCode" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">부품명</td>
                    <td colspan="3"> <input type="text" name="partName" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">모델명</td>
                    <td colspan="3"><input type="text" name="model" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">규격</td>
                    <td colspan="3"><input type="text" name="standard" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">단위</td>
                    <td colspan="3"><input type="text" name="unit" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">매입가</td>
                    <td><input type="number" name="purchase"></td>
                    <td class="head">매출가</td>
                    <td><input type="number" name="sales"></td>
                </tr>
                <tr>
                    <td class="head">메모</td>
                    <td colspan="3"><textarea name="memo" cols="100" rows="8"></textarea></td>
                </tr>
                <tr>
                    <td class="btn" colspan="4">
                        <input type="submit" value="부품등록">
                        <input type="reset" value="다시작성">
                    </td>
        
                </tr>    
           </table>
        </form>

    </section>

    <aside id="button">
        <ul>
            <li><a href="#"><input type="button" value="고객등록"></a></li>
            <li><a href="#"><input type="button" value="정비등록"></a></li>
            <li><a href="part.jsp"><input type="button" value="부품등록"></a></li>
            <li><a href="#"><input type="button" value="현재위치"></a></li>
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
   