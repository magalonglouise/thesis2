<?php require 'process/require/auth.php';?>
<?php require "process/require/dataconf.php";?>
<?php require 'process/process.php'; ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Spare Parts Management</title>
  <link rel="icon" href="images/Logo.png">
  <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/custom.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="images/favicon.png" />
  <link href="css/dataTables.bootstrap4.css" rel="stylesheet">
</head>

<body>
  <div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <?php include "includes/navbar.php";?>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
    <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav" style="position:fixed;">
        <hr class="style2">
            
          <li class="nav-item">
            <a class="nav-link" href="dashboard.php">
              <i class="menu-icon mdi mdi-view-dashboard"></i>
              <span class="menu-title" style="font-size:14px;">Dashboard</span>
            </a>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="menu-icon mdi mdi-inbox"></i>
              <span class="menu-title" style="font-size:14px;">Appointment</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="appointments.php" style="font-size:14px;">Request</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="overdue.php" style="font-size:14px;">Overdue</a>
                </li>
              </ul>
            </div>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" href="calendar.php">
              <i class="menu-icon mdi mdi-calendar"></i>
              <span class="menu-title" style="font-size:14px;">Calendar</span>
            </a>
          </li>
            
          <!-- <li class="nav-item">
            <a class="nav-link" href="dailytaskform.php">
              <i class="menu-icon mdi mdi-file"></i>
              <span class="menu-title" style="font-size:14px;">Daily Task Form</span>
            </a>
          </li> -->

          <li class="nav-item">
            <a class="nav-link"  href="chargeinvoice.php">
              <i class="menu-icon mdi mdi-receipt"></i>
              <span class="menu-title" style="font-size:14px;">Sales Invoice</span>
            </a>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" href="accountmanagement.php">
              <i class="menu-icon mdi mdi-account-multiple"></i>
              <span class="menu-title" style="font-size:14px;">Account Management</span>
            </a>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" href="vehicle.php">
              <i class="menu-icon mdi mdi-car-side"></i>
              <span class="menu-title" style="font-size:14px;">Vehicle</span>
            </a>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" href="sparepartsmanagement.php">
              <i class="menu-icon mdi mdi-wrench"></i>
              <span class="menu-title" style="font-size:14px;">Spare Parts</span>
            </a>
          </li>
            
        </ul>
      </nav>
        
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">

          <div class="row">
            <div class="col-lg-12 grid-margin  stretch-card">
              <div class="card">
                <nav aria-label="breadcrumb">
                  <ol class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php" style="font-size:18px;">Date Entry</a></li>
                    <li class="breadcrumb-item active" aria-current="page" style="font-size:18px;">Spare Parts</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>

          <div class="row">
            <div class="col-lg-12 stretch-card">
              <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col-9">
                            <p class="card-title" style="font-size:20px;">Spare Parts</p>
                            <p class="card-description">
                            </p>
                        </div>
                        <div class="col-3">
                            
                                <button type="button" class="btn btn-darkred" style="padding-button: 10px; float: right; width: 205px;" data-toggle="modal" data-target="#addSpareParts"><i class="menu-icon mdi mdi-account-multiple-plus"></i>
                                    Add Spare Parts
                                </button>

                                  <!--MODAL-->
                                <div class="modal fade" id="addSpareParts" role="dialog">
                                  <div class="modal-dialog">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        
                                      <div class="modal-header" style="background-color:#B80011; color: #ffffff;">
                                        <h5 class="modal-title"><i class="fa fa-car" aria-hidden="true"></i> Add Spare Parts</h5>
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                      </div>
                                        
                                      <div class="modal-body">
                                        <form action="makeseriesmanagement.php" method="post">
                                              <small id="reminder" class="form-text text-muted">Please fill out the required fields.</small>
                                             <br>
                                              <div class="form-group">
                                                <label for="name">Name</label>
                                                <input type="text" class="form-control input-xs" id="name"  placeholder="name" name="name"
                                                required="">
                                              </div>
                                              <div class="form-group">
                                                <label for="Price">Price</label>
                                                <input type="text" class="form-control input-xs" id="price"  placeholder="price" name="price"
                                                required="">
                                              </div>
                                        </form>
                                      </div>
                                        
                                      <div class="modal-footer">

                                        <button type="submit" class="btn btn-sm " name="add_spareparts" style="background-color: #B80011;color: white"><i class="menu-icon mdi mdi-account-multiple-plus"></i> Add </button>

                                        <button type="button" class="btn btn-default btn-sm" data-dismiss="modal" style="color:black;"><i class="menu-icon mdi mdi-close"></i> Cancel</button>
                                      </div>
                              </div>
                              
                              </div>
                            </div>
                    </div>
                    
                  
                  
                  <div class="table-responsive">
                  <table class="table table-bordered table-dark" id="doctables">
                      <thead>
                        <tr class="grid">
                          <th style="font-size:18px;">
                            Make
                          </th>
                          <th style="font-size:18px;">
                            Series
                          </th>
                          <th style="font-size:18px;">
                            Action
                          </th>
                        </tr>
                      </thead>
                      <tbody class="table-primary" style="color:black;">
                        <?php
                            $data = $connection->prepare("SELECT * FROM `spareparts` ");
                            if($data->execute()){
                                $values = $data->get_result();
                                while($row = $values->fetch_assoc()) {
                            echo '<tr>
                                        <td>'.$row['name'].'</td>
                                        <td>'.$row['price'].'</td>
                                        <td class="text-center"> 
                                          <button type="submit" class="btn btn-success"  data-toggle="modal"  data-target="#updateSpareParts'.$row['id'].'"><i class="menu-icon mdi mdi-account-edit"></i> Edit</button>
                                          
                                           <a href="deleteSpareParts.php?id='.$row['id'].'"><button class="btn btn-danger"><i class="menu-icon mdi mdi-delete"></i> Delete</button></a>
                                        </td>
                              </tr>



                        <div div class="modal fade" id="updateSpareParts'.$row['id'].'" role="dialog">
                          <div class="modal-dialog modal-dialog" role="document">
                            <div class="modal-content">
                            <div class="modal-header" style="background-color: #4caf50; color: white; border: 3px solid #4caf50;">
                              <h5 class="modal-title" id="exampleModalLabel">Update Spare Parts</h5>
                              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                              </button>
                            </div>
                            <div class="modal-body">
                            <!-- start -->
                            <form action="sparepartsmanagement.php" method="POST">
                              <div class="row">
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label class="bmd-label-floating">Name</label>
                                    <input type="text" class="form-control" name="name" value="'.$row['name'].'" placeholder="'.$row['name'].'">
                                  </div>
                                </div>
                              </div>
                              <div class="row">
                                <div class="col-md-6">
                                  <div class="form-group">
                                    <label class="bmd-label-floating">Price</label>
                                    <input type="text" class="form-control" name="price" value="'.$row['price'].'" placeholder="'.$row['price'].'">
                                    <input type="hidden" class="form-control" name="id" value="'.$row['id'].'" placeholder="'.$row['id'].'">
                                  </div>
                              </div>
                            </div>
                              <!-- end -->
                              </div>
                              <div class="modal-footer">
                                  <button type="submit" class="btn btn-success" name="update-spareparts" style="float:right"><i class="menu-icon mdi mdi-account-convert"></i> Update</button>
                                <button type="button" class="btn btn-secondary" data-dismiss="modal"><i class="menu-icon mdi mdi-close"></i> Cancel</button>
                                <div class="clearfix"></div>
                              </form>
                              </div>
                            </div>
                          </div>
                        </div>

                              ';  
                            }
                            }else{
                                echo "<tr>
                                        <td colspan='7'>No Available Data</td>
                                    </tr>";
                            } 
                        ?>


                      </tbody>
                    </table>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->

  <script src="js/jquery.dataTables.js"></script>
  <script src="js/dataTables.bootstrap4.js"></script>
  <script src="js/sb-admin-datatables.min.js"></script>
   <script src="js/script.js"></script>
  <!-- AJAX Link -->
 </body>
</html>     
      
 <script>
$(document).ready(function(){
  $("#submit").click(function(){
    var exampleInputName1 = $("#exampleInputName1").val();
    var exampleInputName2 = $("#exampleInputName2").val();
    var exampleInputName3 = $("#exampleInputName3").val();
    var exampleInputPlate = $("#exampleInputPlate").val();
    var exampleInputEmail = $("#exampleInputEmail").val();
    var exampleInputMobile = $("#exampleInputMobile").val();
    var exampleInputTel = $("#exampleInputTel").val();
    var exampleInputAddress = $("#exampleInputAddress").val();
    var dataString = 'exampleInputName1=' + exampleInputName1 + '&exampleInputName2=' + exampleInputName2;
    if(exampleInputName1=='' || exampleInputName2=='' || exampleInputName3=='' || exampleInputNPlate=='' || exampleInputEmail==''
      || exampleInputMobile=='' || exampleInputTel=='' || exampleInputAddress==''){
      alert('Fill all fields')
      $("#display").html("");
    } else {
    $.ajax({
      type: "POST",
      cache: false,
      success: function(result){
       $("#display").html(result);
      }
    });
    }
    return false;
  }); 
});
</script>
      




<script>
  var table = $('#doctables').DataTable({
    // PAGELENGTH OPTIONS
    "lengthMenu": [[ 10, 25, 50, 100, -1], [ 10, 25, 50, 100, "All"]]

});
</script>

<script></script>
