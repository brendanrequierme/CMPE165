<?php
    include 'header.php';
    include 'database.php';

    global $datefilter;
    echo "
        <div class = 'searchBarOuter2'>
        <table class = 'test'>
        <form method='post' action = 'search.php'>
        <div class='searchBox'>
                <td><input type='text' class='search' placeholder='Search...' name='inputHere'></td>
        </div>
        <td><label for='start'>Choose Date: </label></td>
        <td>
            <input type='text' name='datefilter' value=''  style = margin-right:30px;/>
        </td>

        <td><input type='submit' class = 'searchButton' name = 'searchs' value = 'SEARCH'></td>
        </form>
    </table>
    </div>
    ";

    if (isset($_POST['searchs'])){
        $searchQuery = $_POST['inputHere'];
        $stmt = mysqli_query($conn,"SELECT * FROM hotel WHERE hotel_name LIKE '%$searchQuery%'");
        while ($row = mysqli_fetch_array($stmt)) {
                $hotelName = $row['hotel_name'];
                $hotelDescription = $row['description'];
                $hotelPrice = $row['usd'];
                $hotelImage = $row['image'];
                $stmt2 = mysqli_query($conn,"SELECT SUM(bed_count) AS bedcount FROM room WHERE hotel_id IN (SELECT hotel_id FROM hotel WHERE hotel_name LIKE '%$hotelName%')");
                while ($rows = mysqli_fetch_array($stmt2)) {
                    $hotelRoom = $rows['bedcount'];
                }

            echo "
            <div id='organize'>
            <table>
                <td><img src = 'images/$hotelImage' width='180' height='180' /></td>
                <td>
                <h2>$hotelName</h2>
                <h3>Description: $hotelDescription</h3>
                <h3>Number of Rooms Available: $hotelRoom</h3>
                <h3>Hotel Price: $$hotelPrice</h3>
                </td>
                <tr>
                <td><form action = 'payment.php'>
                <input style = width:110px; type = 'submit' class = 'bookButton'  value = 'Book Now!' />
                </form>
                </td>
                </tr>
            </table>
            </div>
            ";
        }
        if(mysqli_num_rows($stmt) < 1) {
            echo("No Data Found");
            }
        }

    include 'footer.php';

?>

<!DOCTYPE HTML>
    <script type='text/javascript'>
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

    <style>
      #map{
        height:400px;
        width:30%;
      }
    </style>
    <div id="map"></div>

    <script>
    //Map options
      function initMap(){
        var options = {
          zoom: 14,
          center:{lat:36.9741,lng:-122.0308}
        }
        
        var map = new
        google.maps.Map(document.getElementById('map'), options);

        //Array of markers
        var markers = [
          {
            coords:{lat:36.96395,lng:-122.02452},
            content:'<h1>Beachview Inn</h1>'
          },
          {
            coords:{lat:36.964390004012536,lng:-122.02413525642596},
            content:'<h1>Edgewater Beach Inn & Suites</h1>'
          }
        ];
        //Loop through markers
        for(var i=0;i<markers.length;i++){
          addMarker(markers[i]);
        }

        //Add Marker function
        function addMarker(props){
          var marker = new google.maps.Marker({
            position:props.coords,
            map:map,
          });
        }

        //Check content
        if(props.content){
          var infoWindow = new google.maps.infoWindow({
            content:props.content
          });

          marker.addListener('click', function(){
            infoWindow.open(map, marker);
          });
        }

      }
    </script>

    <script
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD3vHOdfqLWaz6UyDaW5m7nwuLOcJrMhYo&callback=initMap&v=weekly"
      async
    >
    //Key for Google Maps API
    </script>
</html>
