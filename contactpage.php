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
        <title>Contact Page</title>
    </head>

    <style>
    #footer {
        position: absolute;
        bottom: 0%;
        width: 100%;
    }
    </style>

    <body>
        <form action = "https://formspree.io/f/xoqrlwyk" method = "POST">

        <!-- This div is for contact part -->
        <div>
            <h3 class = "noBotMargin">Phone Number</h3>
            <p class = "noTopMargin">+1 (678)-999-8212
        </div>

        <!-- This div is for the attempt on an email box -->
        <div>
            <h2 style = margin-bottom:0px>Email Us:</h2>
            <p style = margin-top:5px>Email us at: spartandeathhotel@gmail.com or down below</p>
            <h4 style = margin-bottom:5px>First Name</h4>
            <input type = "text" name = "First Name" placeholder = "Enter your First Name">
            <h4 style = margin-bottom:5px>Last Name</h4>
            <input type = "text" name = "Last Name" placeholder = "Enter your Last Name">
            <h4 style = margin-bottom:5px>Email Address</h4>
            <input type = "text" name = "Email Address" placeholder = "Enter your Email Address">
            <h4 style = margin-bottom:5px>Message</h4>
            <textarea name = "msg" id = "Message" cols = "60" rows = "10" placeholder = "Enter your Message"></textarea>
        </div>

        <button class = "submitButton" style = margin-top:10px type= "submit">Submit</button>
        </form>

        <script src = "script.js"></script>
        <!-- This div is for the bottom part of the page -->
        <div>
            <footer id = "footer">
                <?php 
        if (!$_SESSION) {
            include 'footer.php';
        } else {
            include 'footer2.php';
        }
    ?>
            </footer>
        </div>

    </body>
</html>