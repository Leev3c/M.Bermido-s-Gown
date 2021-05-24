<?php
    session_start();
    include('../config/dbconn.php');
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="../assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="../assets/img/favicon.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>M. Bermido's</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="../assets/css/now-ui-kit.css?v=1.1.0" rel="stylesheet" />

    <!--     inserted     -->
    <link rel="stylesheet" href="../plugins/datatables/dataTables.bootstrap.css">

</head>
<body class="index-page sidebar-collapse">
  <nav class="navbar navbar-expand-lg bg-light fixed-top navbar-transparent" color-on-scroll="50">
        <div class="container">
            <div class="navbar-translate">
                <a href="" class="navbar-brand" rel="tooltip"data-placement="bottom" target="" style="color:#000000">
                    M.Bermido's Gown
                </a>
                <button class="navbar-toggler navbar-toggler" type="button"  data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation" style="color:#000000">
                    <span class="navbar-toggler-bar bar2"></span>
                    <span class="navbar-toggler-bar bar3"></span>
                    <span class="navbar-toggler-bar bar4"></span>
                </button>
            </div>
            <div class="collapse navbar-collapse justify-content-end" id="navigation" >
                <ul class="navbar-nav" >
                    <li class="nav-item">
                        <a href="../index.php" class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            
                            <p style="color:#000000">Home</p>
                        </a>
                    </li>
          
                    <li class="nav-item">
                        <a class="nav-link" href="../pages/products.php">
                            <p style="color:#000000">Products</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="" onclick="scrollToDownload()">
                            <p style="color:#000000">Cart</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../pages/user_login_page.php" class="nav-link" href="javascript:void(0)" onclick="scrollToDownload()">
                            <p style="color:#000000">Login</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="../pages/user_signup.php" class="nav-link" onclick="scrollToDownload()">
                            <p style="color:#000000">Sign up</p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" rel="tooltip" title="Like us on Facebook" data-placement="bottom" href="https://www.facebook.com/mbermido" target="_blank">
                    <i class="fa fa-facebook-square" style="color:#000000"></i>
                            <p style="color:#000000">Facebook</p>
                        </a>
                    </li>  
                </ul>
            </div>
        </div>
        </nav>

    <div class="wrapper"><br>
        <div class="main">
            <div class="section section-basic">
                <div class="container">
                      <h2>All Product List</h2>
                      <hr color="black"> 
                <br>
                <div class="col-md-12">
                <br>
            
                <div class="panel panel-success panel-size-custom">
                        <div class="panel-body">

                            <?php
                                      include('../config/dbconn.php');

                                      $action = isset($_GET['action']) ? $_GET['action'] : "";
                                      if($action=='deleted'){
                                          echo "<div class='alert alert-success'>Record was deleted.</div>";
                                      }
                                      $query = "SELECT * FROM products ORDER BY prod_name ASC";
                                      $result = mysqli_query($dbconn,$query);
                                      ?>  
                                 
                                <br>
                                <br>
                                <table id="" class="table table-condensed table-striped">
                                    <tr>
                                      <th>Serial</th>
                                      <th>Product Name</th>
                                      <th>Description</th>
                                      <th>Price(Php)</th>
                                      <th>Quantity</th>
                                      <th>Category</th>
                                      <th>Option</th>
                                    </tr>
                                        <?php
                                          if($result){
                                            while($res = mysqli_fetch_array($result)) {     
                                              echo "<tr>";
                                                echo "<td>".$res['prod_serial']."</td>";
                                                echo "<td>".$res['prod_name']."</td>";
                                                echo "<td>".$res['prod_desc']."</td>";  
                                                echo "<td>".$res['prod_price']."</td>"; 
                                                echo "<td>".$res['prod_qty']."</td>";
                                                echo "<td>".$res['category']."</td>";
                                                echo "<td><a href=\"product_details.php?prod_id=$res[prod_id]\">View</a></td>";
                                              echo "</tr>"; 
                                            }
                                          }?>
                                </table><br><br><br><br>
                        </div>
                    </div> 
                </div>
            </div>
        </div>
<br><br><br><br>
</div>
        <footer class="footer" data-background-color="black">
            <div class="container">
                <nav>
                    <ul>
                        <li>
                            <a href="" target="_blank">
                                INTERNET TECHNOLOGIES
                            </a>
                        </li>
                        <li>
                            IT Elective 3  
                        </li>
                    </ul>
                </nav>
                <div class="copyright">
                    &copy;
                    <script>
                        document.write(new Date().getFullYear())
                    </script>, BSIT-3C, Powerpuff Girls
                </div>    
            </div>
        </footer>
    </div>
</body>
<!--   Core JS Files   -->
<script src="../assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="../assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="../assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="../assets/js/plugins/bootstrap-switch.js"></script>
<!--  Plugin for the Sliders, full documentation here: http://refreshless.com/nouislider/ -->
<script src="../assets/js/plugins/nouislider.min.js" type="text/javascript"></script>
<!--  Plugin for the DatePicker, full documentation here: https://github.com/uxsolutions/bootstrap-datepicker -->
<script src="../assets/js/plugins/bootstrap-datepicker.js" type="text/javascript"></script>
<!-- Control Center for Now Ui Kit: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/now-ui-kit.js?v=1.1.0" type="text/javascript"></script>
<script type="text/javascript">
    $(document).ready(function() {
        // the body of this function is in assets/js/now-ui-kit.js
        nowuiKit.initSliders();
    });

    function scrollToDownload() {

        if ($('.section-download').length != 0) {
            $("html, body").animate({
                scrollTop: $('.section-download').offset().top
            }, 1000);
        }
    }
</script>


   <!---  inserted  -->
    <!-- SlimScroll -->
    <script src="../plugins/slimScroll/jquery.slimscroll.min.js"></script>
    <!-- FastClick -->
    <script src="../plugins/fastclick/fastclick.min.js"></script>
    <!-- AdminLTE App -->
    <script src="../plugins/app.min.js"></script>
    <!-- AdminLTE for demo purposes -->
    <script src="../plugins/demo.js"></script>
    <script src="../plugins/datatables/jquery.dataTables.min.js"></script>
    <script src="../plugins/datatables/dataTables.bootstrap.min.js"></script>
    <script>
      $(function () {
        $("#example1").DataTable({
        });
      });
    </script>
     <!--  inserted  -->

</html>