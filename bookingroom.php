<?php
    // Initialize the session
    session_start();

    if (!$_SESSION) {
        include 'header.php';
    } else {
        include 'header2.php';
    }
    include 'database.php';

    global $datefilter;
?>

<!DOCTYPE HTML>
    <div class="card-body" style = margin-bottom:10px;>
        <form method="GET">
            <div class="group" style = padding-left:2px;>
                <select name="sort_numeric" class="form-control">
                    <option value="">-------</option>
                    <option value="low-high" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "low-high") {echo "selected";}?> >low - high</option>
                    <option value="high-low" <?php if(isset($_GET['sort_numeric']) && $_GET['sort_numeric'] == "high-low") {echo "selected";}?> >high - low</option>
                </select>
                <button type="submit" style = margin-left:10px;>Filter</button>
            </div>
        </form>
    </div>
</html>

<?php
        echo $_POST["mainName"];
        $sort_option = "";
        $stmt = mysqli_query($conn,"SELECT * FROM room WHERE hotel.hotel_name IS '%mainName%'");
        if(isset($_GET['sort_numeric'])) {
            if($_GET['sort_numeric'] == "low-high") {
                $sort_option = "ASC";
            } elseif($_GET['sort_numeric'] == "high-low") 
            $sort_option = "DESC";
        }

        $query = "SELECT * From room ORDER BY room_price $sort_option";
        $query_run = mysqli_query($conn, $query);

        if(mysqli_num_rows($query_run) > 0) {
            foreach($query_run as $row) {
                $roomName = $row['room_name'];
                $roomDescription = $row['description'];
                $roomBedCount = $row['bed_count'];
                $roomPrice = $row['room_price'];

                echo "
                <table>
                    <td>
                    <h2>Hotel Name: </h2>
                    <h2>$roomName</h2>
                    <h3>Description: $roomDescription</h3>
                    <h3>Bed Count: $roomBedCount</h3>
                    <h3>Hotel Price: $$roomPrice</h3>
                    </td>
                    <tr>
                    <td><form action = 'payment.php'>
                    <input style = width:110px type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                    </form>
                    </td>
                    </tr>
                </table>
                </div>
                ";
            }
        } else {
            ?>
            <h2> No Record Found </h2>
            <?php
        }
?>