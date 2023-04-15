<?php 
    include_once "db.php";
    include "function.php";


    if(isset($_POST['submit'])){

        if($_POST['cat'] == 'sendMsg'){
            $name = $_POST['msgName'];
            $email = $_POST['msgEmail'];
            $contact = $_POST['msgContact'];
            $msg = $_POST['msgMessage'];
            if(send_msg($name, $email , $contact , $msg)){
                echo "Your message send successfully to admin. Thank you.";
                echo "you will be redirect shortly";
                header("refresh:3;url=../index.php");    
            }else{

            }           
        }else if($_POST['cat'] == 'login'){
              $email = $_POST['logEmail'];
              $password = $_POST['logPassword'];
            if(login($email, md5($password))){
                $_SESSION['email'] = $email;
                echo "loging in...";
                echo "you will be redirect shortly";
                header("refresh:3;url=../customer"); 
            }else{
                echo "emailId or password incorrect! Please try again!";
                header("refresh:2;url=../index.html");
            }
        }
        else if($_POST['cat']=='regUser'){
                $email = $_POST['email'];
                $company = $_POST['company'];
                $password = $_POST['password'];
                $contact = $_POST['contact'];
                $image = $_POST['image'];
             if(!reg_new_user($company, $email, $contact, md5($password), $image)){
                echo "Error while creating new user";
                header("Location: ../login.php");
            }else{
                echo "User created Please login to continue";
                header("refresh:3; url= ../login.php");
                
            }

        }
        else if($_POST['cat'] == 'RegStaff'){
               $name = $_POST['name'];
               $email = $_POST['email'];
               $contact = $_POST['contact'];
               $category = $_POST['category'];

               if(!reg_new_staff($name,$email,$contact,$category)){
                    echo "Error while adding new employee";
                    header("Location: ../admin/index.php");
               }else{
                    header("Location: ../admin/staff.php");

               }
        }else if($_POST['cat'] == 'AddAppointment'){
            session_start();
            $date = $_POST['date'];
            $service = $_POST['service'];
            
            $user = $_SESSION['email'];
            $note = $_POST['note'];
            if(book_appointment($user,$date,$note)){
                    echo "Appointment booked.";
                    header("refresh:3; url= ../customer/index.php");       
            }else{
                echo "Error while booking appointment";
                header("refresh:3; url= ../customer/index.php");
            }
        }
        else if($_POST['cat']=="loginAdmin"){
            $email = $_POST['logEmailAdmin'];
            $password = $_POST['logPasswordAdmin'];
            if(!login_admin($email,md5($password))){
                echo "Login Faild..";
                header("refresh:1; url= ../index.html");
            }else{
                echo "Welcome Admin";
                header("refresh:1; url= ../admin/index.php");
            }
        }
        else if($_POST['cat'] == "addBreakdown"){
            session_start();
            $problem = $_POST['problem'];
            $note = $_POST['note'];
            $user = $_SESSION['email'];
            
            if(report_breakdown($user,$problem,$note)){
                echo "Breakdown Reported You will get in touch shortly";
                header("refresh:5; url= ../customer/index.php");
            }else{
                echo "Error while reporting..";
                header("refresh:2; url= ../customer/index.php");
            }
        }
        else if($_POST['cat'] == "addOrder"){

            

            session_start();
            
            $user = $_SESSION['email'];
            $item = $_POST['item'];
            $qty = $_POST['qty'];
            $total = $_POST['total'];
            $address = $_POST['address'];

            if(add_order($item,$qty,$total,$address,$user)){
                echo "Your order is placed you will be contact soon";
                header("refresh:1; url= ../customer/index.php");
            }else{
                echo "Error while placing order!";
                header("refresh:5; url= ../customer/index.php");
            }
        }else{
            echo "Error in selection";
        }
        

    }

?>