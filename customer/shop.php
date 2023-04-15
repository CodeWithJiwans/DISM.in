<?php 
session_start();
if (!isset($_SESSION['email'])) {
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
        <title>Industry Machine Maintenance</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/barberIcon.png" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css2?family=Jua&display=swap" rel="stylesheet">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../assets/css/styles.css" rel="stylesheet" />
        
        <!-- JS -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF" crossorigin="anonymous"></script>
</head>
<body>
        <?php 
            include_once "navbar.php";
            include "../backend/function.php";
        ?>
        <div class="container">
            <h2>Product List</h2>
             
            <div class="row ">
            <?php 
                $data = get_products();
                while($row = mysqli_fetch_assoc($data)){ ?>
                <div class="col-sm d-flex justify-content-center">
                    <div class="card mb-3  text-center" style="width: 18rem; border-radius: 25px; padding: 10px;">
                        <div class="card-body">
                          <img src="<?php echo $row['img'];?>" alt="" height="100px" width="100px">
                          <h5 class="card-title"><?php echo $row['item_name']; ?></h5>
                          <h6 class="card-subtitle mb-2 text-muted"><?php echo $row['item_desc']?> </h6>
                          <p class="card-text"><?php echo "Rs." . $row['price']; ?></p>
                          <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" onclick="setData('<?php echo $row['item_id']; ?>', '<?php echo $row['price']; ?>')";> Order it</a>
                        </div>
                    </div>
                </div>
            <?php    }
            ?>

        </div>


        <!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Order Equipment </h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <div class="form-row">
            <form action="../backend/" method="POST">
            <div class="form-group col-sm mt-2">
                <label for="item">Item ID</label>
                <input type="text" class="form-control" id="item" name="item" readonly>
            </div> 

            <div class="form-group col-sm mt-2">
                <label for="qty">Order Qty</label>
                <input type="number" min="1" max="5" class="form-control" id="qty" value="1" name="qty" >
            </div>
            
            <div class="form-group col-sm mt-2">
                <label for="total">Total</label>
                <input type="number" class="form-control" id="total" name="total" readonly >
            </div>


            <div class="form-group col-sm mt-2">
                <label for="address">Delivery Address</label>
                <textarea name="address" class="form-control" id="address" name="address" cols="30" rows="4"></textarea>
            </div>

                    <input type="hidden" name="cat" value="addOrder" />
                    <!-- <input type="hidden" name="item" value = ""> -->
        </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <input type="submit" name="submit" value="submit" class="btn btn-primary">
        
        </form>
        
        
      </div>
    </div>
  </div>
</div>

<script>

    var number;
    function setData(item,price){
        number = parseInt(price);
        document.getElementById('item').value = item;
        document.getElementById('total').value = number;
    }

    $("#qty").on("input", function(){
        var qty = parseInt($(this).val());
        document.getElementById('total').value = number*qty;
        
    });
</script>
</body>
</html>