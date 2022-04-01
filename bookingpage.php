<?php
    include 'header.php';
?>

<!DOCTYPE html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Book Your Hotel!</title>
    </head>

    <body>
        <form action = "payment.php">
        <!--  Need to include the search bar in this and all the check in check out and guest stuff -->
        <div>
            <!-- Temp hold until we can get all the database stuff figured out -->
            <h2> Pismo Beach, California, United States of America</h2>
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <table>
                <tr>
                    <td style = padding-right:70px><h3 class = "noMargin">Motel 6 Pismo Beach, CA</h3></td>
                    <td><h3 class = "noMargin">$139</h3></td>
                </tr>
                <tr>
                    <td>860 4th Street, Pismo Beach, </br>93449, CA</td>
                    <td>total $159</td>
                </tr>
            </table>
                <input style = margin-left:23.5% type = "submit" class = "bookButton"  value = "Book Now!" />
            </form>
        </div>

   
            
  
        
    <?php include 'footer.php'?>

    </body>
</html>