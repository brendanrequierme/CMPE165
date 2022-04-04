<?php 

?>

<!DOCTYPE html>

    <body>
        <!-- This div is for the footer part of the page -->
        <div>
            <footer id = "footer">
            <hr class = "lineHeight" class = "noTopMargin" color = "gray">
            <table>
                <td style = padding-right:20px><a class = "clearDecorAndRPad" href = "aboutpage.php?id=<?php echo $username?>">About Us</a></td>
                <td style = padding-right:20px><a class = "clearDecorAndRPad" href = "bookingpage.php?id=<?php echo $username?>">Booking</a></td>
                <td style = padding-right:20px><a class = "clearDecorAndRPad" href = "contactpage.php?id=<?php echo $username?>">Contact Us</a></td>
            </table>
            </footer>
        </div>
    </body>
</html>