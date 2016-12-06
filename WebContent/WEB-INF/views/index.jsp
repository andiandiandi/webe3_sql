<%@ taglib prefix='c' uri='http://java.sun.com/jsp/jstl/core' %>
<%@ page import="java.io.*,java.util.*, javax.servlet.*" %>

<!DOCTYPE>
<html>

<head>
    <meta charset="utf-8">
    <title>Andis Techblog</title>
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/stylesheets/index.css">
</head>

<body>
    <header class="clearfix">
        <div class="column_70 left clearfix">
            <h1 style="font-size:300%">Ein h1 header der den Firmennamen beinhalten könnte</h1>
            <h3>Ein h3 header für einen Slogan zur Firma</h3>
        </div>
        <div class="column_30 left clearfix" style="margin-top:5%;text-align: right;">
            <a href="https://facebook.com" class="facebook"></a>
            <a href="https://twitter.com" class="twitter"></a>
            <a href="#" class="rss"></a>
        </div>
    </header>

    <nav class="nav_div clearfix">
        <div class="column_30 left clearfix">
            <a class="button_nav" href="#"><span>Home</span></a>
            <a class="button_nav" href="#"><span>About</span></a>
            <a class="button_nav" href="#"><span>Contact</span></a>
            <a class="button_nav" href="/WebE/post"><span>submit a post</span></a>
            <a class="button_nav" href="/WebE/javaclientside"><span>js uebung</span></a>
        </div>
        <div class="column_30 left clearfix" style="text-align:left;margin-top:15px;">
            <input type="text" id="searchbar" name="search" placeholder="dies ist ein input tag um die posts in der mitte zu filtern" style="width:90%" onkeyup="filter()">
        </div>
        <div class="column_40 left clearfix" style="text-align:right;margin-top:10px;">
            <a class="button_login" href="file:///C:/Users/Andi/Documents/GitHub/webe2/partials/login.html">Log in</a>
            <a class="button_logout" href="file:///C:/Users/Andi/Documents/GitHub/webe2/partials/register.html" style="margin-right:15px">Sign Up</a>
        </div>
    </nav>


    <div class="main_content clearfix">
        <aside class="aside_left content column_20 left clearfix">
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>Dies ist ein h3 großer header</h3></a>
                </div>
                <div class="aside_content">
                    Hier ist das erste Div zur unterteilung im linken aside
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>BLOGGER NEWS</h3></a>
                </div>
                <div class="aside_content">
                   Hier ist das zweite Div
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>LABEL</h3></a>
                </div>
                <div class="aside_content">
                    <span style="color:red">Hier ist das dritte Div. Hier steht ganz viel Text damit ein overflow stattfindet und eine scrollbar erscheint:</span> Lorem ipsum dolor sit amet, 
                    consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos
                     et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum 
                     dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. 
                     At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                     Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
                      At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor
                       sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et
                        accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                     Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua.
                      At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor
                       sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et
                        accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                </div>
            </div>
        </aside>

        <section class="column_50 left mr_1 blog_content clearfix">

			<c:forEach items="${posts}" var="post">	
       			   <div class="blog_post">
               	
   						 <span style="vertical-align:top;"><img src="${pageContext.request.contextPath}/images/calendar_icon.png" style="width:25px;height:25px;margin-right:5px" alt="calendar" />${post.getDate().toString()}</span>
						 <h2 class="blog_post_header">${post.getTitle()}</h2>
                	     <div class="blog_post_content" style="word-wrap:break-word;">
                				${post.getContent()}
               			 </div>
						 <div style="text-align:right;margin-top:15px">
						 	<span>posted by: ${post.getFirstName()} ${post.getSurname()}</span>
						 </div>
           			</div>
           			
           			<hr>
           			
			</c:forEach>
           
            
           
         
        </section>

        <aside class="aside_right content column_22 left mr_1 clearfix">
        
        	<div class="aside_left aside_content">
                <div class="aside_label">
                    <span><h3>PAGE COUNTER:</h3></span>
                </div>
                <div class="aside_content">
                   <h5>visited: ${pageCounter} times</h5>
                </div>
            </div>
        
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>POPULAR POSTS</h3></a>
                </div>
                <div class="aside_content">
                	<span>Hier wird eine Liste verwendet um beliebte blog posts anzuzeigen</span>
                    <ul>
                        <li><a href="#">post 1</a></li>
                        <li><a href="#">post 2</a></li>
                        <li><a href="#">post 3</a></li>
                    </ul>
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>Dies ist ein Header in einem anchor tag</h3></a>
                </div>
                <div class="aside_content">
                   Hier wird das selbe Prinzip wie auf der linken Seite angewandt. Ein Div in einem aside Element.
                </div>
            </div>
            <div class="aside_left aside_content">
                <div class="aside_label">
                    <a href="#"><h3>BLOG ARCHIVE</h3></a>
                </div>
                <div class="aside_content">
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor
                    in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                </div>
            </div>
        </aside>
    </div>

    <footer>
        <div class="footer">
            <span>Hier steht der content zum footer</span>
            <br>
            <span>@Andi | ALL RIGHTS RESERVED</span>
        </div>
    </footer>

	
</body>

</html>
