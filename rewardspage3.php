<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';
?>

<?php
        echo "
            <h2> Sign in For Rewards </h2>
        ";
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Rewards Page</title>
    </head>

    <body>
        <div>

        </div>
        
    </body>
</html>