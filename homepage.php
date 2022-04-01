<?php
    include 'header.php';
?>

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- https://fonts.google.com/icons?selected=Material+Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <title>Spartan Death Hotel</title>
    </head>

    <body>

        <img src = "images/lakePicture.jpg" width = 100% height = "500"/>
        <!-- This is for body/searchbar -->
        
        <div class = "white">
            <table class = "test">
                <form method="post" action = "search.php">
                    <div class="searchBox">
                            <td><input type="text" class="search" placeholder="Search..." name="inputHere"></td>
                    </div>
                    <td><label for="start">Check-In Date:</label></td>
                    <td><input type="date" id="start" name="res-start" style = margin-right:25px></td>
                    <td><label for="end">Check-Out Date:</label></td>
                    <td><input type="date" id="end" name="res-end"></td>
                    <td><input type="submit" name = "searchs" value = "SEARCH"></td>
                    </form>
            </table>
        </div>

        <div>
            <table>
                <tr>
                    <h3>Why book with Spartan Death Hotel?</h3>
                </tr>
                <tr>
                    <td class = "rPad"><span class="material-icons cancelicon">clear</span>Free Cancelation</td>
                    <td class = "rPad"><span class="material-icons verifiedicon">verified</span>Our price guarantee</td>
                    <td class = "rPad"><span class="material-icons rewardicon">vpn_key</span>Get a reward night</td>
                </tr>
            </table>
        </div>

        <div>
            <table>
                <tr>
                    <h3>A snapshot of the world's most picture-perfect properties</h3>
                    <td>Check out some of our favorite unique stays</td>
                </tr>
            </table>
        </div>

        <!-- Links for the hotels 
        https://www.hotelgalvez.com/
        https://www.baglionihotels.com/branches/baglioni-hotel-london/
        https://www.agoda.com/l-hotel/hotel/khon-kaen-th.html?cid=1844104
        https://www.omnihotels.com/hotels/atlanta-cnn-center
        -->

        <!-- This div is for the the hotel examples -->
        <div>
            <table>
                <tr>
                    <td><img class = "picBorder" src = "images/beachview.jpg" bordered = 1px width = "300" height = "300"/></td>
                    <td><img class = "picBorder" src = "images/casablanca.jpg" width = "300" height = "300"/></td>
                    <td><img class = "picBorder" src = "images/bellagio.jpg" width = "300" height = "300"/></td>
                    <td><img class = "picBorder" src = "images/paramount.jpg" width = "300" height = "300"/></td>
                </tr>
                    <td><h4 class = "noMargin">Beachview Inn</h4></td>
                    <td><h4 class = "noMargin">Casablanca on the Beach</h4></td>
                    <td><h4 class = "noMargin">Bellagio</h4></td>
                    <td><h4 class = "noMargin">The Paramount Hotel</h4></td>
                </tr>
                <tr>
                    <td>Santa Cruz, CA</td>
                    <td>Santa Cruz, CA</td>
                    <td>Las Vegas, NV</td>
                    <td>Portland, OR</td>
                </tr>
            </table>
        </div>

        <!-- This div is for ... -->
        <div>
            <table>
                <h3>Travel with Confidence</h3>
                <tr>
                    <td>Many properties have updated us about their enhanced health and safety measures. So, during your search, you may find details like:</td>
                </tr>
            </table>
        </div>

        <!-- This div is for the ... -->
        <div>
            <table>
                <tr>
                    <td><h4 class = "noBotMargin">Official health standards</h4></td>
                    <td><h4 class = "noBotMargin">Social distancing</h4></td>
                </tr>
                <tr>
                    <td class = "rPad2">Properties adhering to corporate/organization <br>
                    sanitization guidelines.</td>
                    <td>Contactless check-in and check-out along with other social 
                    <br>distancing measure.</td>
                </tr>
                <tr>
                    <td><h4 class = "noBotMargin">Hygiene and sanitization</h4></td>
                    <td><h4 class = "noBotMargin">Essentials at the property</h4></td>
                </tr>
                <tr>
                    <td class = "rPad2">The use of disinfectant and whether properties <br>
                    enforce a gap period between stays.</td>
                    <td>Free hand sanitizer for guests and individually wrapped food.</td>
                </tr>
            </table>
        </div>

        <!-- This div is for ... -->
        <div>
            <h3 class = noBotMargin>Overheard from our loyalty members</h3>
            <p class = noTopMargin>We have over 50 million happy members and have given away over 25 million reward nights around the world. Here's what our members have to say</p>
        </div>

        <footer">
        <?php include 'footer.php'?>
        </footer>
        
    </body>
</html>