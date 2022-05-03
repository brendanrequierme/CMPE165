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
                            <td><input type="text" class="search" placeholder="Search..." name="inputHere"></td>
                    </div>
                    <td><label for="start">Choose Date: </label></td>
                    <td>
                        <input type="text" name="datefilter" value=""  style = margin-right:30px;/>
                    </td>
                    <script type="text/javascript">
                        $(function() {

                        $('input[name="datefilter"]').daterangepicker({
                            autoUpdateInput: false,
                            locale: {
                                cancelLabel: 'Clear'
                            }
                        });

                        $('input[name="datefilter"]').on('apply.daterangepicker', function(ev, picker) {
                            $(this).val(picker.startDate.format('MM/DD/YYYY') + ' - ' + picker.endDate.format('MM/DD/YYYY'));
                        });

                        $('input[name="datefilter"]').on('cancel.daterangepicker', function(ev, picker) {
                            $(this).val('');
                        });

                        });
                    </script>
                    
                    <td><input type="submit" class = "searchButton" name = "searchs" value = "SEARCH"></td>
                    </form>
            </table>
        </div>
        
    </body>
</html>
