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
				<a href="index.jsp">?????????(????????? ??????)</a>
			</p>
		</div>
		<div id="form">
			<form method="post" action="login.jsp">
				<fieldset>
					??????ID:<input type="text" name="id" size="10"> ????????????:<input
						type="password" name="pwd" size="10"> <input type="submit"
						value="?????????"> <a href="form.jsp">|????????????</a>
				</fieldset>
			</form>
		</div>
		<%
		} else {
		session.setMaxInactiveInterval(500);
		%>
		<a id="logo" href="index.jsp">?????????(????????? ??????)</a> <span class="right"
			style="padding: 30px10px;"> <%=checkName%>??? ???????????????. <a
			href="logout.jsp">logout</a> <a href="form.jsp">????????????</a>
		</span>
		<%
		}
		%>

	</header>
    <nav id="li">
        <ul>
            <li><a href="edu.jsp">????????????</a></li>
            <li><a href="information.jsp">????????????</a></li>
            <li><a href="list.jsp">????????????</a></li>
            <li><a href="#">????????????</a></li>
            <li><a href="#">????????????</a></li>
            <li><a href="#">?????????</a></li>
        </ul>
    </nav>
    <hr>
    <section>
            <h1>?????? ?????? ??????</h1>
            <form name="form" method="post" action="part_tbl.jsp">
           <table border="1">
               
                <tr>
                    <td class="head">????????????</td>
                    <td colspan="3"><input type="text" name="partCode" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">?????????</td>
                    <td colspan="3"> <input type="text" name="partName" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">?????????</td>
                    <td colspan="3"><input type="text" name="model" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">??????</td>
                    <td colspan="3"><input type="text" name="standard" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">??????</td>
                    <td colspan="3"><input type="text" name="unit" size="100%"></td>
                </tr>
                <tr>
                    <td class="head">?????????</td>
                    <td><input type="number" name="purchase"></td>
                    <td class="head">?????????</td>
                    <td><input type="number" name="sales"></td>
                </tr>
                <tr>
                    <td class="head">??????</td>
                    <td colspan="3"><textarea name="memo" cols="100" rows="8"></textarea></td>
                </tr>
                <tr>
                    <td class="btn" colspan="4">
                        <input type="submit" value="????????????">
                        <input type="reset" value="????????????">
                    </td>
        
                </tr>    
           </table>
        </form>

    </section>

    <aside id="button">
        <ul>
            <li><a href="#"><input type="button" value="????????????"></a></li>
            <li><a href="#"><input type="button" value="????????????"></a></li>
            <li><a href="part.jsp"><input type="button" value="????????????"></a></li>
            <li><a href="#"><input type="button" value="????????????"></a></li>
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
   