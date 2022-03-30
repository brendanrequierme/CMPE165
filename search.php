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
    </head>
    <body>
        <h2>Search hotel here</h2>
        <form method="post">
            <div class="row">
                <input type="text" name="input" placeholder="Search...">
                <input type="submit" name="search" value="Search">
            </div>
        </form>
    </body>


</html>


<?php
    echo $output;
?>

