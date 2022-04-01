<?php
require_once "database.php";
$username = $password = $confirm_password = "";
$username_err = $password_err = $confirm_password_err = "";

if($_SERVER["REQUEST_METHOD"] == "POST"){

    // Validate username
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter a username.";
    } else{
        // Prepare a select statement
        $query = "SELECT user_id FROM userInfo WHERE username = ?";
        if($stmt = $conn->prepare($query)){
            // Bind variables to the prepared statement as parameters
           $stmt->bind_param("s",$param_username);
            // Set parameters
           $param_username = trim($_POST["username"]);
            // Attempt to execute the prepared statement
           if(mysqli_stmt_execute($stmt)){
            /* store result */
            mysqli_stmt_store_result($stmt);
            if(mysqli_stmt_num_rows($stmt) == 1){
                $username_err = "This username is already taken.";
            } else{
                $username = trim($_POST["username"]);
            }
        } else{
            echo "Oops! Something went wrong. Please try again later.";
        }
            // Close statement
        mysqli_stmt_close($stmt);
    }
}

    // Validate password
if(empty(trim($_POST["password"]))){
    $password_err = "Please enter a password.";     
} elseif(strlen(trim($_POST["password"])) < 6){
    $password_err = "Password must have atleast 6 characters.";
} else{
    $password = trim($_POST["password"]);
}

    // Validate confirm password
if(empty(trim($_POST["confirm_password"]))){
    $confirm_password_err = "Please confirm password.";     
} else{
    $confirm_password = trim($_POST["confirm_password"]);
    if(empty($password_err) && ($password != $confirm_password)){
        $confirm_password_err = "Password did not match.";
    }
}

    // Check input errors before inserting in database
if(empty($username_err) && empty($password_err) && empty($confirm_password_err)){
        // Prepare an insert statement
    $query = "INSERT INTO userInfo (username, password) VALUES (?, ?)";
    if($stmt = $conn->prepare($query)){
            // Bind variables to the prepared statement as parameters
        $stmt->bind_param("ss",$param_username,$param_password);
            // Set parameters
            $param_username = $username;
            // Creates a password hash
            $param_password = password_hash($password, PASSWORD_DEFAULT); // Creates a password hash
            // Attempt to execute the prepared statement
            if(mysqli_stmt_execute($stmt)){
                // Redirect to login page
                header("location: login.php");
            } else{
                echo "Something went wrong. Please try again later.";
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
    <title>Sign Up</title>  
</head>

<style>
    body {
        background-color: rgba(197, 235, 254);
    }
    .content {
    position: absolute;
    margin: auto;
    background: rgba(245, 245, 245);
    text-align: center;
    height: 350px;
    width: 500px;
    left: 50%;
    top: 40%;
    transform: translate(-50%, -50%);
    border: 5px solid #e07777;
    border-radius: 25%;
    padding: 10px;
}
</style>

<body>
    <div class = "content">
    <div class="wrapper">
        <h2>Sign Up</h2>
        <p>Please fill this form to create an account.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" autocomplete="off">
            <div class="form-group <?php echo (!empty($username_err)) ? 'has-error' : ''; ?>">
                <label>Username</label>
                <br>
                <input type="text" name="username" class="form-control" value="<?php echo $username; ?>" placeholder="Enter your Username">
                <span class="help-block" style = color:red><?php echo $username_err; ?></span>
            </div>    
            <div class="form-group <?php echo (!empty($password_err)) ? 'has-error' : ''; ?>">
                <label>Password</label>
                <br>
                <input type="password" name="password" class="form-control" value="<?php echo $password; ?>" placeholder="Create a Password">
                <span class="help-block" style = color:red><?php echo $password_err; ?></span>
            </div>
            <div class="form-group <?php echo (!empty($confirm_password_err)) ? 'has-error' : ''; ?>">
                <label>Confirm Password</label>
                <br>
                <input type="password" name="confirm_password" class="form-control" value="<?php echo $confirm_password; ?>" placeholder="Confirm Password">
                <span class="help-block" style = color:red><?php echo $confirm_password_err; ?></span>
            </div>
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Submit">
                <input type="reset" class="btn btn-default" value="Reset">
            </div>
            <p>Already have an account? <a href="login.php">Login here</a>.</p>
        </form>
    </div>    
    </div>
</body>
</html>

