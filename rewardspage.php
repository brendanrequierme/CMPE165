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
        <title>Rewards Page</title>
    </head>

    <style>
    #footer {
        position: absolute;
        bottom: 0%;
        width: 100%;
    }
    </style>

    <body>
        <div>
            <p>Rewards has not been implemented yet.</p>
        </div>
        
        <!-- This div is for the bottom part of the page -->
        <div>
            <footer id = "footer">
                <?php include 'footer.php'?>
            </footer>
        </div>
    </body>
</html>