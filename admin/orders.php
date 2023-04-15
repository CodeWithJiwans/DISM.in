<?php 
session_start();
if(!isset($_SESSION['admin'])){
    header("Location: ../index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>IMS</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="../assets/maintenance.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../assets/css/styles.css" rel="stylesheet" />

<link rel="stylesheet" href="../assets/css/datatable.css">
<script src="../assets/js/jQuery.js"></script>
<script src="../assets/js/dataTable.js"></script>
   
    </head>
    <body id="page-top">
        <!-- Navigation-->
        <?php 
        
            include_once "navbar.php";
            include "../backend/function.php";
           
        ?>

        <div class="container mt-5">
        <h3 class="mb-3">Orders List</h3>
        <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Product ID</th>
                <th>Order By</th>
                <th>QTY</th>
                <th>Total</th>
                <th>Address</th>
                <th>Order At</th>
            </tr>
        </thead>
        <tbody> 
            <?php 
            $data = get_all_orders();
            while($row= mysqli_fetch_assoc($data)){ ?>
            <tr>
                <td><?php echo $row['item_id']?></td>
                <td><?php echo $row['user_id'] ?></td>
                <td><?php echo $row['qty'] ?></td>
                <td><?php echo $row['total'] ?></td>
                <td><?php echo $row['address']; ?></td>
                <td><?php echo $row['timestamp']; ?></td>
            </tr>
            <?php } ?>
            
        </tbody>
        <tfoot>
            <tr>
            <th>Product ID</th>
                <th>Order By</th>
                <th>QTY</th>
                <th>Total</th>
                <th>Address</th>
                <th>Order At</th>
            </tr>
        </tfoot>
    </table>



        </div>
        
    <script>
        $(document).ready(function () {
            $('#example').DataTable({
            order: [[3, 'desc']],});
        });
    </script>
        
    </body>
</html>