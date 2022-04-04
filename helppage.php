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
        <title>Help Page</title>
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
            <h2>How do you use the search bar?</h2>
            <p>Type the word that nearest matches the hotel name. For example, If you are looking for a place like the BeachView Inn,</p>
            <p>you can type Beach and then you would get all of the hotels that have Beach listed in the name</p>
            <h2>How do you use the filter list?</h2>
            <p>Go to the Booking Page and then click on the drop down menu with -------. You will see two options appear after where</p>
            <p>you will be able to sort from low-high or high-low.
        </div>
        
        <!-- This div is for the bottom part of the page -->
        <div>
            <footer id = "footer">
                <?php include 'footer.php'?>
            </footer>
        </div>
    </body>
</html>