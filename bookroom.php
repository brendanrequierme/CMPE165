<?php
require_once "database.php";
$username = $password = $confirm_password = "";
$username_err = $password_err = $confirm_password_err = "";
$firstname_err = $lastname_err = $roomcount_err = $guestcount_err = "";
$firstname = $lastname = "";
$guestcount = $roomcount = "";

if($_SERVER["REQUEST_METHOD"] == "POST"){

    // Validate username
    if(empty(trim($_POST["username"]))){
        $username_err = "Please enter a username.";
    } else{
        // Prepare a select statement
        $query = "SELECT id FROM loginInfo WHERE username = ?";
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
    $query = "INSERT INTO loginInfo (username, password) VALUES (?, ?)";
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
    <title>Book Room</title>
</head>
<body>
    <div class="wrapper">
        <h2>Book Room</h2>
        <p>Please fill this form to book a room.</p>
        <form action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>" method="post" autocomplete="off">
            <div class="form-group <?php echo (!empty($firstname_err)) ? 'has-error' : ''; ?>">
                <label>First Name</label>
                <br>
                <input type="text" name="firstname" class="form-control" value="<?php echo $firstname; ?>" placeholder="Enter your first name">
                <span class="help-block" style = color:red><?php echo $firstname_err; ?></span>
            </div>    
            <div class="form-group <?php echo (!empty($lastname_err)) ? 'has-error' : ''; ?>">
                <label>Last Name</label>
                <br>
                <input type="text" name="lastname" class="form-control" value="<?php echo $lastname; ?>" placeholder="Enter your last name">
                <span class="help-block" style = color:red><?php echo $lastname_err; ?></span>
            </div>   
            <div class="form-group <?php echo (!empty($guestcount_err)) ? 'has-error' : ''; ?>">
                <label>Guest Count</label>
                <br>
                <!-- <input type="text" name="guestcount" class="form-control" value="<?php echo $guestcount; ?>" placeholder="Enter number of guests">
             -->
             <select id="guestcountselect" name="guestcountselect">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
                <span class="help-block" style = color:red><?php echo $guestcount_err; ?></span>
            </div>   
            <div class="form-group <?php echo (!empty($roomcount_err)) ? 'has-error' : ''; ?>">
                <label>Room Count</label>
                <br>
                <!-- <input type="text" name="roomcount" class="form-control" value="<?php echo $roomcount; ?>" placeholder="Enter number of rooms"> -->
                <select id="roomcountselect" name="roomcountselect">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                    <option value="6">6</option>
                    <option value="7">7</option>
                    <option value="8">8</option>
                </select>
                <span class="help-block" style = color:red><?php echo $roomcount_err; ?></span>
            </div>  
            <div class="form-group <?php echo (!empty($roomtype_err)) ? 'has-error' : ''; ?>">
                <label>Room Type</label>
                <br>
                <!-- <input type="text" name="roomtype" class="form-control" value="<?php echo $roomtype; ?>" placeholder="Enter room type"> -->
                <select id="roomtypeselect" name="roomtypeselect">
                    <option value="king">King Room</option>
                    <option value="doublequeen">Double Queen Room</option>
                </select>
                <span class="help-block" style = color:red><?php echo $roomtype_err; ?></span>
            </div>  
            <br> 
            <div class="form-group">
                <input type="submit" class="btn btn-primary" value="Book Now">
                <!-- <input type="reset" class="btn btn-default" value="Clear"> -->
            </div>
        </form>
    </div>    
</body>
</html>

