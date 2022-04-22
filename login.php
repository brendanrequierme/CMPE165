<?php
// Initialize the session
session_start();

// Check if the user is already logged in, if yes then redirect him to home page
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: homepage.php");
    exit;
}

// Include database file
require_once "database.php";

$username = $password = "";
$username_err = $password_err = "";

// Processing form data when form is submitted
if($_SERVER["REQUEST_METHOD"] == "POST"){
    // Check if username is empty
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter username.";
    } else{
        $username = trim($_POST["username"]);
    }
    // Check if password is empty
    if(empty(trim($_POST["password"]))){
        $password_err = "Please enter your password.";
    } else{
        $password = trim($_POST["password"]);
    }
    
    // Validate credentials
    if(empty($username_err) && empty($password_err)){
        // Prepare a select statement to get from database
        $query = "SELECT user_id, username, password FROM userInfo WHERE username = ?";
        if($stmt = $conn->prepare($query)){
            // Bind variables to the prepared statement as parameters
            mysqli_stmt_bind_param($stmt, "s", $param_username);
            // Set parameters
            $param_username = $username;
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Store result
                mysqli_stmt_store_result($stmt);
                // Check if username exists, if yes then verify password
                if(mysqli_stmt_num_rows($stmt) == 1){                    
                    // Bind result variables
                    mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                    if(mysqli_stmt_fetch($stmt)){
                        if(password_verify($password, $hashed_password)){
                            // Password is correct, so start a new session
                            session_start();
                            // Store data in session variables
                            $_SESSION["loggedin"] = true;
                            $_SESSION["id"] = $id;
                            $_SESSION["username"] = $username;                            
                            // Redirect user to home page
                            header("location: homepage.php");
                        } else{
                            // Display an error message if password is not valid
                            $password_err = "The password you entered did not match the username.";
                        }
                    }
                } else{
                    // Display an error message if username doesn't exist
                    $username_err = "No account found with that username.";
                }
            } else{
                echo "Oops! Something went wrong. Please try again later.";
            }
            // Close statement
            mysqli_stmt_close($stmt);
        }
    }
    // Close connection
    $conn->close();
}
?>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="./styleStart.css" />
</head>
<body>
    <div class = "content">
        <h2><center>Spartan Hotel Login</center></h2>
        <p><center>Please fill in your credentials to login.</center></p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" autocomplete="off">
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label><b>Username:</b></label>
                <input type="text" name="username" class="form-control" value="<?php echo $username; ?>" placeholder = "Enter your Username">
                <br>
                <span class="help-block" style = color:red><center><?php echo $username_err; ?></center></span>
            </div>    
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label><b>Password:</b></label>
                <input type="password" name="password" class="form-control" placeholder = "Enter your Password">
                <br>
                <span class="help-block" style = color:red><center><?php echo $password_err; ?></center></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Login">
            </div>
            <p><center>Don't have an account? <a href="register.php">Sign up now</a>.</center>
            <br>
            </p><p><center><a href="homepage.php">Return home</a></center></p>
        </form>
    </div>    
</body>
</html>
