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
            <h2>How do I register for an account?</h2>
            <p>For registering an account you will need to click the sign in button and then from there you click sign up now. From there you will</p>
            <p>need to think of a unique username and a password that is at least 6 letters in length. If you choose a username that is</p>
            <p>already being used, then you will be prompted with an error saying that the username has already been taken.</p>
            <h2>How do you use the search bar?</h2>
            <p>Type the word that nearest matches the hotel name. For example, If you are looking for a place like the BeachView Inn,</p>
            <p>you can type Beach and then you would get all of the hotels that have Beach listed in the name</p>
            <h2>How do you use the filter list?</h2>
            <p>Go to the Booking Page and then click on the drop down menu with -------. You will see two options appear after where</p>
            <p>you will be able to sort from low-high or high-low.
            <h2>How can we contact you if we have a problem?</h2>
            <p>Click on the contact us at the bottom of the page and feel free to email or call us!</p>
        </div>
        
        <!-- This div is for the bottom part of the page -->
        <div>
            <footer id = "footer">
                <?php include 'footer.php'?>
            </footer>
        </div>
    </body>
</html>