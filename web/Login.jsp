<%-- 
    Document   : Login
    Created on : Mar 4, 2024, 10:45:10 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/login.css"/>
        <style>
            .error-message1 {
                display: block; /* Hiển thị như một khối */
                background-color: #f8d7da; /* Màu nền */
                color: #721c24; /* Màu chữ */
                padding: 10px 15px; /* Khoảng cách giữa nội dung và viền */
                border: 1px solid #f5c6cb; /* Viền */
                border-radius: 4px; /* Bo tròn viền */
                margin-bottom: 20px; /* Khoảng cách dưới */
            }


        </style>
    </head>
    <body>
        <%
            
            String status = (String) request.getAttribute("status");
            if(status != null && status.equals("fail") == true){
            %>            
                <div class="container right-panel-active" id="container">
            <%
            }else{
                %>
                <div class="container" id="container">
                <%
            }           
            %>
            <div class="form-container sign-up-container">
                <form action="signup" method="post">
                    <h1>Create Account</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <span>or use your email for registration</span>
                    <%
                        String errorUser = (String) request.getAttribute("errorUser");
                        if(errorUser != null){
                    %>
                    <span class="error-message1"><%=errorUser%></span>
                    <%
                        }
                    %>
                    <input type="email" placeholder="Email" name="email" value="${email}"/>
                    <input type="text" placeholder="User name" name="user" value="${user}" />                 
                    <input type="password" placeholder="Password" name="pass" value="${pass}" />
                    <input type="password" placeholder="Repassword" name="repass" value="${repass}" />
                    <%
                        String errorSign = (String) request.getAttribute("errorSign");
                        if(errorSign != null){
                    %>
                    <span class="error-message1"><%=errorSign%></span>
                    <%
                }
                    %>
                    <button type="submit">Sign Up</button>
                </form>
            </div>

            <div class="form-container sign-in-container">
                <form action="login" method="Post">
                    <h1>Sign in</h1>
                    <div class="social-container">
                        <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                        <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                        <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
                    </div>
                    <span>or use your account</span>
                    <input type="text" name="user" placeholder="User name" />                 
                    <input type="password" name="pass" placeholder="Password" />                  
                    <a href="#">Forgot your password?</a>
                    <%
                        String errorLogin = (String) request.getAttribute("errorlogin");
                        if(errorLogin != null){
                        
                    %>
                    <span class="error-message1"><%=errorLogin%></span>                       
                    <%                       
                        
                    }
                    %>
                    <button type="submit" >SIGN IN</button>                   
                </form>
            </div>

            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>

        <footer>
            <p>
                Created with <i class="fa fa-heart"></i> by
                <a target="_blank" href="https://florin-pop.com">Florin Pop</a>
                - Read how I created this and how you can join the challenge
                <a target="_blank" href="https://www.florin-pop.com/blog/2019/03/double-slider-sign-in-up-form/">here</a>.
            </p>
        </footer>

        <script type="text/javascript">
            const signUpButton = document.getElementById('signUp');
            const signInButton = document.getElementById('signIn');
            const container = document.getElementById('container');

            signUpButton.addEventListener('click', () => {
                container.classList.add("right-panel-active");
            });

            signInButton.addEventListener('click', () => {
                container.classList.remove("right-panel-active");
            });
        </script>
    </body>

</html>
