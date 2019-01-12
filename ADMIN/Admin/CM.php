<?php require 'process/require/auth.php';?>
<?php require "process/require/dataconf.php";?>
<?php require "process/check/dashboardcheck.php";


?>

<!DOCTYPE html>
<html lang="en">

<head>
  <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Dashboard</title>
  <link rel="icon" href="images/Logo.png">
  <!-- plugins:css -->
  <link rel="shortcut icon" href="images/favicon.png" />
  <link href="css/dataTables.bootstrap4.css" rel="stylesheet">
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.addons.css">
    
    
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/calendar.css">
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
            <a class="nav-link" href="calendar.php">
              <i class="menu-icon mdi mdi-calendar"></i>
              <span class="menu-title" style="font-size:14px;">Calendar</span>
            </a>
          </li>
            
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <i class="menu-icon mdi mdi-inbox"></i>
              <span class="menu-title" style="font-size:14px;">Data Entry</span>
              <i class="menu-arrow"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                <li class="nav-item">
                  <a class="nav-link" href="appointments.php" style="font-size:14px;">Appointment</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size:14px;">Administrators</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size:14px;">Make Series</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size:14px;">Spare Parts</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size:14px;">Services</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#" style="font-size:14px;">Scope of Work</a>
                </li>
              </ul>
            </div>
          </li>
            
          <!-- <li class="nav-item">
            <a class="nav-link" href="dailytaskform.php">
              <i class="menu-icon mdi mdi-file"></i>
              <span class="menu-title" style="font-size:14px;">Daily Task Form</span>
            </a>
          </li>

          <li class="nav-item">
            <a class="nav-link"  href="chargeinvoice.php">
              <i class="menu-icon mdi mdi-receipt"></i>
              <span class="menu-title" style="font-size:14px;">Charge Invoice</span>
            </a>
          </li> -->
            
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
            <a class="nav-link" href="accountmanagement.php">
              <i class="menu-icon mdi mdi-account-multiple"></i>
              <span class="menu-title" style="font-size:14px;">Content Management</span>
            </a>
          </li>
            
        </ul>
      </nav>
        
      <!-- partial -->
      <div class="main-panel">
        <div class="content-wrapper">
          <?php
          date_default_timezone_set("Asia/Calcutta");
          //echo date_default_timezone_get();
          ?>

          <?php
            if(isset($_POST['submit'])!=""){
                $name=$_FILES['photo']['name'];
                $size=$_FILES['photo']['size'];
                $type=$_FILES['photo']['type'];
                $temp=$_FILES['photo']['tmp_name'];
                $date = date('Y-m-d H:i:s');
                $caption1=$_POST['caption'];
                $link=$_POST['link'];
                
                move_uploaded_file($temp,"files/".$name);

               $query=$conn->query("INSERT INTO contents() VALUES ('$name','$date')");
              if($query){
               header("location:");
              }else{
              die(mysql_error());
              }
            }
          ?>

     <!-- SERVICES -->
     <section id="services" data-stellar-background-ratio="2.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <!-- SECTION TITLE -->
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              <h2>Services</h2>
                         </div>
                    </div>

                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                              <a href="news-detail.html">
                                   <img src="images/wassup1.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   <h3><a href="#">Body Paint</a></h3>
                                   <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button> 
                                   <p>Cars need make-overs too. Our shop offers painting of your cars</p>
                              </div>
                         </div>
                    </div>
                  </form>
                  <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.6s">
                              <a href="news-detail.html">
                                   <img src="images/wassup2.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   <h3><a href="#">Body Repair</a></h3>
                                   <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                                   <p>This is when your car becomes our patient, and we the doctors, fixing your car's sickness</p>
                              </div>
                         </div>
                    </div>
                  </form>
                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                              <a href="#">
                                   <img src="images/wassup3.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   <h3><a href="#">Customize</a></h3>
                                   <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                                   <p>Need to spice up your car? We can do that too.</p>
                                   
                              </div>
                         </div>
                    </div>
                  </form>

               </div>
          </div>
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <!-- SECTION TITLE -->
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              
                         </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                              <a href="news-detail.html">
                                   <img src="images/wassup4.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   <h3><a href="#">Electrical</a></h3>
                                   <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                                   <p>This is where yur car's electrical components are managed.</p>
                                   
                              </div>
                         </div>
                    </div>
                  </form>

                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.6s">
                              <a href="news-detail.html">
                                   <img src="images/wassup5.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   <h3><a href="#">Maintenance</a></h3>
                                   <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                                   <p>Your cars need to be maintained and stay its best, we can handle that for you.</p>
                                   
                              </div>
                         </div>
                    </div>
                  </form>

                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                              <a href="news-detail.html">
                                   <img src="images/wassup6.jpg" class="img-responsive" alt="">
                              </a>
                              <div class="news-info">
                                   <h3><a href="#">Mechanical</a></h3>
                                   <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                                   <p>We also do mechanical works for your car, because we want what's best for you.</p>
                                   
                              </div>
                         </div>
                    </div>
                  </form>

               </div>
          </div>
     </section>

     <!-- LATEST CARS -->
     <section id="fc" data-stellar-background-ratio="2.5">
          <div class="container">
               <div class="row">

                    <div class="col-md-12 col-sm-12">
                         <!-- SECTION TITLE -->
                         <div class="section-title wow fadeInUp" data-wow-delay="0.1s">
                              <h2>Latest Cars</h2>
                         </div>
                    </div>

                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.4s">
                              <a href="#">
                                   <img src="images/c1.jpg" class="img-responsive" alt="">
                              </a>
                              <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                              <div class="news-info">
                                   <span>March 08, 2018</span>
                              </div>
                         </div>
                    </div>
                  </form>

                   <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                   <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.6s">
                              <a href="#">
                                   <img src="images/c2.jpg" class="img-responsive" alt="">
                              </a>
                              <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                              <div class="news-info">
                                   <span>February 20, 2018</span>
                              </div>
                         </div>
                    </div>
                  </form>

                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <!-- NEWS THUMB -->
                         <div class="news-thumb wow fadeInUp" data-wow-delay="0.8s">
                              <a href="#">
                                   <img src="images/c3.jpg" class="img-responsive" alt="">
                              </a>
                              <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>
                              <div class="news-info">

                                   <span>January 27, 2018</span>
                              </div>
                         </div>
                    </div>
                  </form>

               </div>
          </div>
     </section>

     <!-- TEAM -->
     <section id="team" data-stellar-background-ratio="1">
          <div class="container">
               <div class="row">

                    <div class="col-md-6 col-sm-6">
                         <div class="about-info">
                              <h2 class="wow fadeInUp" data-wow-delay="0.1s">Our Team</h2>
                         </div>
                    </div>

                    <div class="clearfix"></div>
                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <div class="team-thumb wow fadeInUp" data-wow-delay="0.2s">
                              <img src="images/eryl.png" class="img-responsive" alt="">
                              <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>

                                   <div class="team-info">
                                        <h3>Chanealle Audune</h3>
                                        <p>Assistant Manager</p>
                                   </div>

                         </div>
                    </div>
                  </form>

                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <div class="team-thumb wow fadeInUp" data-wow-delay="0.4s">
                              <img src="images/eryl.png" class="img-responsive" alt="">
                              <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>

                                   <div class="team-info">
                                        <h3>Eryl Simeon Thaddeus</h3>
                                        <p>Manager / Head Mechanic</p>
                                   </div>

                         </div>
                    </div>
                  </form>
                    <form enctype="multipart/form-data"  action="" id="wb_Form1" name="form" method="post">
                    <div class="col-md-4 col-sm-6">
                         <div class="team-thumb wow fadeInUp" data-wow-delay="0.6s">
                              <img src="images/eryl.png" class="img-responsive" alt="">
                              <input type="file" name="photo" id="photo"  required="required">
                                   <button type="submit" class="btn btn-success" value="SUBMIT" name="submit">Submit</button>

                                   <div class="team-info">
                                        <h3>N/A</h3>
                                        <p>Supervisor</p>
                                   </div>

                         </div>
                    </div>
                  </form>
                    
               </div>
          </div>
     </section>
      </div>
    </div>
</body>
</html>