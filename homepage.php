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
        <!-- https://fonts.google.com/icons?selected=Material+Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Spartan Death Hotel</title>
    </head>

    <body class = "home">

        <!-- This is for body/searchbar -->
        
        <div class = "searchBarOuter">
            <table class = "test">
                <form method="post" action = "search.php">
                    <div class="searchBox">
                            <td><input type="text" class="search" placeholder="Search for Hotel Names Here" name="inputHere"></td>
                    </div>
                    <td><input type="submit" class = "searchButton" name = "searchs" value = "SEARCH"></td>
                    </form>
            </table>
        </div>
        
    </body>
</html>
