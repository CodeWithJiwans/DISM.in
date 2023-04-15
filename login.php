<!DOCTYPE html>
<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>Login and Registration Form in HTML</title>
      <link rel="stylesheet" href="assets/css/login5.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <script src="assets/js/jquery.min.js"></script>
      <script src="assets/js/register.js"></script>
      <script src="assets/js/login.js"></script>
   </head>
   <body>
      <div class="wrapper">
         <div class="title-text">
            <div class="title login">
               Login Form
            </div>
            <div class="title signup">
               Signup Form
            </div>
         </div>
         <div class="form-container">
            <div class="slide-controls">
               <input type="radio" name="slide" id="login" checked>
               <input type="radio" name="slide" id="signup">
               <label for="login" class="slide login">Login</label>
               <label for="signup" class="slide signup">Signup</label>
               <div class="slider-tab"></div>
            </div>
            <div class="form-inner">
               <form action="./backend/" method="POST" class="login" >
                  <div class="field">
                     <input type="text" placeholder="Email Address" name="logEmail" id="login_email" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Password" name="logPassword" id="login_pass" required>
                  </div>
                  <input type="hidden" name="cat" value="login">
                  <!-- <div class="pass-link">
                     <a href="#">Forgot password?</a>
                  </div> -->
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <!-- <input type="submit" class="btn btn-primary" value="Login" name="submit" /> -->
                     <input type="submit" value="Login" name="submit" id="login_here">
                  </div>
                  <div class="signup-link">
                     Not a member? <a href="">Signup now</a>
                  </div>
                  <div class="signup-link">
                    Admin? <a href="./login/admin.html">Login here</a>
                  </div>
               </form>
               <form action="./backend/index.php" class="signup" method="POST" id="signin_form">
                  <div class="field">
                     <input type="text" placeholder="Company Name" name="company" id="signin_fullname" required>
                  </div>
                  <div class="field">
                     <input type="text" placeholder="Email Address" name="email" id="signin_email" required>
                  </div>
                  <div class="field">
                     <input type="number" placeholder="Contact Number" name="contact" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Password" name="password" id="signin_pass" required>
                  </div>
                     <input type="hidden" name="image" value="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                     <input type="hidden" name="cat" value="regUser">
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" value="Register" name="submit" >
                  </div>

               </form>
            </div>
         </div>
         
         <!-- 
         <div class="col">
            <a href="#" class="fb btn">
              <i class="fa fa-facebook fa-fw"></i> Login with Facebook  
            </a>
            <a href="#" class="twitter btn">
              <i class="fa fa-twitter fa-fw"></i> Login with Twitter
            </a>
            <a href="#" class="google btn">
              <i class="fa fa-google fa-fw"></i> Login with Google+
            </a>
          </div>
         -->
      
      <script>
         const loginText = document.querySelector(".title-text .login");
         const loginForm = document.querySelector("form.login");
         const loginBtn = document.querySelector("label.login");
         const signupBtn = document.querySelector("label.signup");
         const signupLink = document.querySelector("form .signup-link a");
         signupBtn.onclick = (()=>{
           loginForm.style.marginLeft = "-50%";
           loginText.style.marginLeft = "-50%";
         });
         loginBtn.onclick = (()=>{
           loginForm.style.marginLeft = "0%";
           loginText.style.marginLeft = "0%";
         });
         signupLink.onclick = (()=>{
           signupBtn.click();
           return false;
         });

       

      </script>
   </body>
</html>