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
        <title>About Us Page</title>
    </head>

    <style>
    #footer {
        position: absolute;
        bottom: 0%;
        width: 100%;
    }
    </style>

    <body>
        
        <!-- Brendan is Evil and He Killed Us All Please Help-->
        <div>
            <b><p>Who are the creators of the website SpartanDeathHotel.com?</p></b>
            <p>The website was created by 10 students are currently attending San José State University.</p>
            <b><p>List of Students:</p></b>
            <p><b>Brendan Requierme</b> (Project Manager)</p>
            <p><b class = "specialText">Alice (Zoufan) Zhang</b> (Product Owner/Documentation)</p>
            <p><b class = "specialText">Anthony Vann</b> (Technical Lead/SW Developer (Frontend))</p>
            <p><b class = "specialText">Kelly Nguyen</b> (Documentation/SW Developer (Frontend))</p>
            <p><b class = "specialText">Brandon Truong</b> (SW Testing/SW Developer (Frontend))</p>
            <p><b class = "specialText">Harshil Shah</b> (SW Testing/SW Developer (Frontend))</p>
            <p><b class = "specialText">Seyoung Oh</b> (Documentation/SW Developer (Backend))</p>
            <p><b class = "specialText">Sushi (Xu) Shi</b> (SW Testing/SW Developer (Backend))</p>
            <p><b class = "specialText">Tyrell Strong</b> (SW Testing/SW Developer (Backend))</p>
            <p><b class = "specialText">Honghao Ma</b> (Documentation/SW Testing)</p>
            <b><p>Where are they currently at?</p></b>
            <strike><p class = "specialText">Deceased due to their project manager forcing them to code 24/7.</p></strike>
            <p>They are all currently attending SJSU as happy students and they are all definitely still alive.</p>
        </div>

        <form action = "https://formspree.io/f/xoqrlwyk" method = "POST">

        <!-- This div is for contact part -->
        <div>
            <h3 class = "noBotMargin">Phone Number</h3>
            <p class = "noTopMargin">+1 (678)-999-8212
        </div>

        <!-- This div is for the attempt on an email box -->
        <div>
            <h2 style = margin-bottom:0px>Email Us:</h2>
            <p style = margin-top:5px>Email us at: spartandeathhotel@gmail.com or down below</p>
            <h4 style = margin-bottom:5px>First Name</h4>
            <input type = "text" name = "First Name" placeholder = "Enter your First Name">
            <h4 style = margin-bottom:5px>Last Name</h4>
            <input type = "text" name = "Last Name" placeholder = "Enter your Last Name">
            <h4 style = margin-bottom:5px>Email Address</h4>
            <input type = "text" name = "Email Address" placeholder = "Enter your Email Address">
            <h4 style = margin-bottom:5px>Message</h4>
            <textarea name = "msg" id = "Message" cols = "60" rows = "10" placeholder = "Enter your Message"></textarea>
        </div>

        <button class = "submitButton" style = margin-top:10px type= "submit">Submit</button>
        </form>

        <script src = "script.js"></script>

    </body>
</html>
