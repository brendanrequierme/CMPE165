<?php
    include 'header.php';

    $connect = mysqli_connect("localhost","root","","information");

    $output = "";

    if(isset($_POST['search'])) {
        $input = $_POST['input'];

        if(!empty($input)) {
            $query = "SELECT * FROM hotel WHERE hotel_name LIKE '%$input%'";
            $res = mysqli_query($connect, $query);

            $output .= "
                <table class = 'table table-bordered table=striped'>
                    <tr>
                        <th>hotel_name</th>
                        <th>description</th>
                    </tr>
            ";

            if(mysqli_num_rows($res) < 1) {
                $output .="
                    <tr>
                    <td codspan='6' class='text-center'>No data found </td>
                    </tr>
                ";
            } else {
                while($row = mysqli_fetch_array($res)) {

                    $output .= "
                        <tr>
                            <td>".$row['hotel_name']."<td>
                            <td>".$row['description']."<td>
                    ";
                }
            }
        }
    }
    
?>

<!DOCTYPE html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- https://fonts.google.com/icons?selected=Material+Icons -->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    </head>
    <body>
        <h2 class = "searchText">Search hotel here</h2>
        <form method="post">
            <div class="searchBox">
                <table class = "searchContainer">
                    <tr>
                        <td>
                            <input type="text" class="search" placeholder="Search...">
                           <!-- <input type="submit" name="submitSearch" value="Search"> -->
                        </td>
                        <td>
                            <a href="#" ><span style = "padding-left:10px" class="searchicon">search</span></a>
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </body>


</html>


<?php
    echo $output;
?>

