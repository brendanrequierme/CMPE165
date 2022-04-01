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
                        <th>usd<td>
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
                            <td>".$row['usd']."<td>
                        </tr>
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
                    <div class="row">
                        <table class="searchContainer">
                            <tr>
                                <td>
                                    <input type="text" name="input" placeholder="Search...">                                    
                                </td>
                                <td>
                                    <input type="submit" name="search" value="Search">                                    
                                </td>
                            </tr>
                        </table>
                    </div>
            </form>
            <div class="card-body">
            <form method="GET">
                <div class="group">
                <table class="filterContainer">
                    <tr>
                        <td>
                            <select name="sort_numeric" class="form-control">
                                <option value="">-------</option>
                                <option value="low-high" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "low-high") {echo "selected";}?> >low - high</option>
                                <option value="high-low" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "high-low") {echo "selected";}?> >high - low</option>
                            </select>                            
                        </td>
                        <td>
                            <button type="submit">Filter</button>                            
                        </td>
                    </tr>
                <table>
                </div>
            </form>
        </div>
    </body>


</html>


<?php
    echo $output;
?>

