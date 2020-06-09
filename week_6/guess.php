<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> Sarker Sunzid Mahmud </title>
</head>
<body>
    <h1>Welcome to my guessing game</h1>

    <?php
        $myNumber = 66;
        if ( !isset($_GET['guess']) ) 
        {
            echo "Missing guess parameter";
        } 
        else if( empty($_GET['guess']) )
        {
            echo "Your guess is too short";
        }
        else if( !is_numeric($_GET['guess']) )
        {
            echo "Your guess is not a number";
        }
        else if( $_GET['guess'] < $myNumber )
        {
            echo "Your guess is too low";
        }
        else if( $_GET['guess'] > $myNumber )
        {
            echo "Your guess is too high";
        }
        else if( $_GET['guess'] == $myNumber )
        {
            echo "Congratulations - You are right";
        }
        

    ?>

</body>
</html>