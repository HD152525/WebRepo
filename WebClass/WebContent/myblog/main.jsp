<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import ="org.dimigo.vo.UserVO" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <title>블로그 메인</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css" integrity="sha384-/Y6pD6FV/Vv2HJnA6t+vslU6fwYXjCFtcEpHbNJ0lyAFsXTsjBbfaDjzALeQsN6M" crossorigin="anonymous">
    
    <script src = "/WebClass/js/blog.js">
    </script>
    <link rel = "stylesheet" type = "text/css" href="/WebClass/css/style.css">
  </head>
  <body>
     <!-- 메뉴바 -->
     <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
     <a class="navbar-brand" href="NewFileB.html">블로그</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
       <span class="navbar-toggler-icon"></span>
     </button>
   
     <div class="collapse navbar-collapse" id="navbarSupportedContent">
       <ul class="navbar-nav mr-auto">
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="/WebClass/myblog/menu1.html">소개 <span class="sr-only">(current)</span></a>
         </li>
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="/WebClass/myblog/menu2.html">책</a>
         </li>
         <li class="nav-item" onmouseover="menu_over(this);" onmouseout="menu_out(this);">
           <a class="nav-link" href="/WebClass/myblog/menu3.html">취미</a>
         </li>
         
       </ul>
       <%
            UserVO user = (UserVO) session.getAttribute("user");
            if (user == null) {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item"><a class="nav-link" href = "/WebClass/bloglogin" style="color: white">Login</a></li>
            <li class="nav-item"><a class="nav-link" href = "/WebClass/myblog/register.html" style="color: white">Register</a></li>
         </ul>
         <%
            } else {
         %>
         <ul class="nav justify-content-end">
            <li class="nav-item dropdown"><a
               class="nav-item nav-link dropdown-toggle mr-md-2" href="#"
               id="bd-versions" data-toggle="dropdown" aria-haspopup="true"
               aria-expanded="false"> <%=user.getName() + "님"%>
            </a>
            <div class="dropdown-menu dropdown-menu-right"
                  aria-labelledby="bd-versions">
                  <form action="/WebClass/bloglogout" method="post">
                     <button type="submit" class="dropdown-item">Sign out</button>
                  </form>
               </div></li>
         </ul>
         <%
            }
         %>
       
     </div>
   </nav>
<div class="container">
    <h1>블로그</h1>
    <hr>
   </div>
   <div class = "textblank">
   <p>2-5 25번 이명근의 블로그입니다.</p>
   </div>
   <div class="modal" id = "myModal">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">로그인 결과</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p></p>
      </div>
      <div class="modal-footer">

        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
   
   <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>
  

  
  
  
  
  
  
  </body>
</html>