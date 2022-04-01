<?php
    include 'header.php';
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
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
        margin-left: 33%;
        font-size: 30px;
        font-family: nosifer;
        color: red;
    }

    </style>

    <body>
        <img src = "images/cat.gif" />
        <h2>Thank you for booking with Spartan Death Hotel.</h2>
        <b>We hope you enjoy your stay.</b>
        
        <!-- This div is for the bottom part of the page -->
        <div>
            <footer id = "footer">
                <?php include 'footer.php'?>
            </footer>
        </div>
    </body>
</html>