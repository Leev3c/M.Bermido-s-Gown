<?php include('server.php') ?>
<!DOCTYPE html>
<html>
<head>
  <title>Registration system PHP and MySQL</title>
  <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

 <div class="main-nav">
        <div class="logo">
          <img src="img/logo.png" width="175px">
        </div>
          <nav>
            <ul>
              <li><a href="index.php">Home</a></li>
              <li><a href="products.php">Products</a></li>
              <li><a href="services.php">Services</a></li>
              <li><a href="aboutus.php">About Us</a></li>
              <li><a href="login.php" class="active">Account</a></li>
            </ul>
          </nav>

          <img src="images/cart.png" width="30px" height="30px">

      </div>  


  
  <div class="header">
  	<h2>Register</h2>
  </div>
	
  <form method="post" action="register.php">

  	<?php include('errors.php'); ?>
  	<div class="input-group">
  	  <label>Username</label>
  	  <input type="text" name="username" value="<?php echo $username; ?>">
  	</div>

    <div class="input-group">
      <label>Age</label>
      <input type="text" name="age" value="<?php echo $age; ?>">
    </div>

    <div class="input-group">
      <label>Address</label>
      <input type="text" name="address" value="<?php echo $address; ?>">
    </div>

  <div class="input-group">
      <label>Mobile Number</label>
      <input type="text" name="mobilenumber" value="<?php echo $mobilenumber; ?>">
    </div>

  	<div class="input-group">
  	  <label>Email</label>
  	  <input type="text" name="email" value="<?php echo $email; ?>">
  	</div>
  	<div class="input-group">
  	  <label>Password</label>
  	  <input type="password" name="password_1">
  	</div>
  	<div class="input-group">
  	  <label>Confirm password</label>
  	  <input type="password" name="password_2">
  	</div>
  	<div class="input-group">
  	  <button type="submit" class="btn" name="reg_user">Register</button>
  	</div>


  	<p>
  		Already a member? <a href="login.php">Sign in</a>
  	</p>
  </form>
</body>
</html>