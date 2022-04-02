<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
}
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="refresh" content="60;url=homepage.php" />
        <title>Finished Booking</title>
    </head>

    <style>
    #footer {
        position: absolute;
        bottom: 0%;
        width: 100%;
    }

    h2 {
        margin-left: 28%;
    }

    img { 
        margin-left: 42%;
    }

    b {
        margin-left: 31.7%;
        font-size: 30px;
        font-family: nosifer;
        color: red;
    }

    </style>

    <body>
        <img src = "images/cat.gif" />
        <h2>Thank you for booking with Spartan Death Hotel.</h2>
        <b>We hope you enjoy your stay.</b>
        </br>
        <h2 style = margin-left:26.5%;>You will be redirected back to the homepage in 1 minute.</h2>
        
        <!-- This div is for the bottom part of the page -->
        <div>
            <footer id = "footer">
                <?php include 'footer.php'?>
            </footer>
        </div>
    </body>
</html>