<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
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

        section h1{
            color: blue;
            font-size: 30px;
            text-align: center;
        }
        section table{
            margin-left: auto; margin-right: auto;
        }
        section form table{
            width: 80%;
            height: 100%;
        }
        section img {
            width: 100%;
            height: 100%;
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

        hr {
            border-color: silver;
            background-color: silver;
            clear: both;
            height: 2px;

        }

        #foot {
            padding-left: 40px;
            padding-top: 15px;
            width: 50%;
        }

        #footimg {
            float: right;
            line-height: 0;
            width: 50%;
        }
        .header{
            text-align: center;
        }
        #submit{
            text-align: center;
        }
        
    </style>

    <script>
        function check(){
            if(document.form.id.value==""){
                alert('???????????? ???????????????');
            }
            else if(document.form.name.value==""){
                alert('????????? ???????????????');
               document.form.name.focus();
            }
            else if(document.form.passwd.value==""){
                alert('??????????????? ???????????????');
                document.form.passwd.focus();
            }
            else if(document.form.passwdck.value==""){
                alert('?????? ??????????????? ???????????????');
                document.form.passwdck.focus();
            }
            else if(document.form.passwd.value!="" && document.form.passwdck.value !=="")
            if(document.form.passwd.value!= document.form.passwdck.value){
                alert("??????????????? ???????????? ????????????");
            }
            else{
                document.form.submit();
                
            }
        }
        
        function id_chk(){
            window.open("id_dup.jsp?id="+document.form.id.value,target="_self");        }
   
    </script>
        
 

    <body>
        <header>
            <div id="head">
                 <p><a href="index.jsp">?????????(????????? ??????)</a></p>
            </div>
            <div id="form">
                <form>
                    <fieldset>
                        ??????ID:<input type="text" name="id" size="10">
                        ????????????:<input type="password" name="pwd" size="10">
                        <input type="submit" value="?????????">
                        <a href="form.jsp">|????????????</a>
                    </fieldset>
                </form>
            </div>
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
            <h1>?????? ??????</h1>
            <form name="form" method="POST" action="in_process.jsp">
                <table border="1">
                    <tr>
                        <td class=header>?????????</td>
                        <td>
                            <input type="text" name="id">
                            <input type="button" value="????????????" onclick="id_chk()">
                        </td>
                    </tr>
                    <tr>
                        <td class=header>??????</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td class=header>????????????</td>
                        <td><input type="password" name="passwd"></td>
                    </tr>
                    <tr>
                        <td class=header>??????????????????</td>
                        <td><input type="password" name="passwdck"></td>
                    </tr>
                    <tr>
                        <td class=header>??????</td>
                        <td><input type="radio" name="gender" value="??????">???
                        <input type="radio" name="gender" value="??????">???</td>
                    </tr>                       
                    <tr>
                        <td class=header>?????????</td>
                        <td>
                            <input type="text" name="email1">@
                            <select name="email2">
                                <option>naver.com</option>
                                <option>daum.net</option>
                                <option>gmail.com</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class=header>?????????</td>
                        <td>
                            <select name="phone1">
                                <option>010</option>
                                <option>011</option>
                                <option>017</option>
                                <option>019</option>
                            </select>
                            -<input type="number" name="phone2" style="
                            
                            
                            widht:500px" >
                            -<input type="number" name="phone3">
                        </td>
                    </tr>
                    <tr>
                      
                        <td class=header>????????????</td>
                            <td>
                            <input type="number" name="tel1">
                            -<input type="number" name="tel2">
                            -<input type="number" name="tel3">
                        </td>
                    </tr>
                    <tr>
                        <td class=header>??????</td>
                        <td><input type="text" name="address" size="55"></td>
                    </tr>
                    <tr>
                        <td class=header>????????????</td>
                        <td><input type="text" name="carNumber"></td>
                    </tr>
                    <tr>
                        <td class=header>????????????</td>
                        <td><input type="text" name="carType"></td>
                    </tr>
                    <tr>
                        <td id="submit" colspan="2">
                            <input type="button" value="????????????" onclick="javascript:check()">
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

            <div id="footimg">
                <img src="img/facebook.gif">
                <img src="img/twitter.gif">
                <img src="img/googleplus-icon.png" width="40px" height="40px">

            </div>
        </footer>

    </body>

    </html>