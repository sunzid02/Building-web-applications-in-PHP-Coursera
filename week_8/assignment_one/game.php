<?php

// if (!isset($_SESSION["username"])) 
// {
//     die("Name parameter missing session");

// }

// Demand a GET parameter
if ( ! isset($_GET['name']) || strlen($_GET['name']) < 1  ) {
    die('Name parameter missing');
}

// If the user requested logout go back to index.php
if ( isset($_POST['logout']) ) {
    unset($_SESSION["username"]);

    header('Location: index.php');Kamryn, si106, Instructor
Danar, si106, Learner
Franco, si106, Learner
Rhia, si106, Learner
Rivan, si106, Learner
Argyle, si110, Instructor
Deniss, si110, Learner
Jeanna, si110, Learner
Louie, si110, Learner
Nika, si110, Learner
Jean, si206, Instructor
Dennie, si206, Learner
Esha, si206, Learner
Kaan, si206, Learner
Piper, si206, Learner
    return;
}

// Set up the values for the game...
// 0 is Rock, 1 is Paper, and 2 is Scissors
$names = array('Rock', 'Paper', 'Scissors');
$human = isset($_POST["human"]) ? $_POST['human']+0 : -1;

// $computer = 0; // Hard code the computer to rock
// TODO: Make the computer be random
$computer = rand(0,2);

// This function takes as its input the computer and human play
// and returns "Tie", "You Lose", "You Win" depending on play
// where "You" is the human being addressed by the computer
function check($computer, $human) {
    // For now this is a rock-savant checking function
    // TODO: Fix this
    if ( $human == $computer ) {
        return "Tie";
    } else if ( $human == 1 && $computer == 0 ){
        return "You Win";
    } else if ( $human == 2 && $computer == 1 ){
        return "You Win";
    } else if ( $human == 0 && $computer == 2 ){
    	return "You Win";
    } else if ( $human == 2  && $computer == 0 ) {
        return "You Lose";
    } else if ( $human == 1  && $computer == 2) {
        return "You Lose";
    } else if ( $human == 0  && $computer == 1 ) {
        return "You Lose";
    }
    
    return false;
}

// Check to see how the play happenned
$result = check($computer, $human);

?>
<!DOCTYPE html>
<html>
<head>
<title>Sarker Sunzid Mahmud</title>
<?php require_once "bootstrap.php"; ?>
</head>
<body>
<div class="container">
<h1>Rock Paper Scissors</h1>
<?php
if ( isset($_REQUEST['name']) ) {
    echo "<p>Welcome: ";
    echo htmlentities($_REQUEST['name']);
    echo "</p>\n";
}
?>
<form method="post">
<select name="human">
<option value="-1">Select</option>
<option value="0">Rock</option>
<option value="1">Paper</option>
<option value="2">Scissors</option>
<option value="3">Test</option>
</select>
<input type="submit" value="Play">
<input type="submit" name="logout" value="Logout">
</form>

<pre>
<?php
if ( $human == -1 ) 
{
    print "Please select a strategy and press Play.\n";
} 
else if ( $human == 3 ) 
{
    for($c=0;$c<3;$c++) 
    {
        for($h=0;$h<3;$h++) 
        {
            $r = check($c, $h);
            print "Human=$names[$h] Computer=$names[$c] Result=$r\n";
        }
    }
} 
else 
{
    print "Your Play=$names[$human] Computer Play=$names[$computer] Result=$result\n";
}
?>
</pre>
</div>
</body>
</html>
