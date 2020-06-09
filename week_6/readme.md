## Assignment: A Guessing Game and HTTP GET Parameters
    In this assignment you will write a guessing game in PHP that takes GET parameters and plays the game.

## Sample solution
    You can explore a sample solution for this problem at

    http://www.wa4e.com/code/arrays/guess.php?guess=1234
    This sample solution won't completly pass the autograder. It needs some work to meet the specifications. You can download the code for the partially complete sample solution here. You will have to change this per the instructions in the autograder in order to pass the autograder.

## Resources
    There are several sources of information so you can do the assignment:

    Lectures and materials on Expressions and Control Flow in PHP and PHP Arrays from www.wa4e.com
    Chapters 27, 28, and 31 from the free textbook The Missing Link: An Introduction to Web Development and Programming written by Michael Menendez and published by Open SUNY Textbooks.
    NGROK - A tool to create temporary secure tunnels from a local server to the Internet.

## Specifications
    Since this assignment will be graded using an autograder (see below), your code must match to match the wording and error messages in the sample application precisely.

    The autograder will randomly choose the "correct number" for your application so you will have to modify the sample code to adjust the correct answer. You also will need to add your name to the <title> tag in order for you to be given a grade for the assignment.

    The autograder will run the following tests on your application:

        It will look at the contents of the <title> tag and insist your name is part of the title of the page. If your name is not in the title, all of the tests will be run but no grade will be sent.
        It will call your program with no parameters at all and your program should say, "Missing guess parameter".
        It will call your program with the guess parameter without a value and your program should say, "Your guess is too short".
        It will call your code with a non-numeric value and your code should say, "Your guess is not a number".
        It will call your code with a low guess and your code should say, "Your guess is too low".
        It will call your code with a too high guess and your code should say, "Your guess is too high".
        It will call your code with the right value and your code should say, "Congratulations - You are right".

## Submitting your Assignment to the Autograder
    This assignment will be graded by an online autograder that will actually connect to your site, request pages, and check the pages to verify correct implementation of the specifications. You will need to submit a URL that points to your application that can be accessed from the Internet.

    If your application has a real URL (i.e. not "localhost") then you can submit that URL to the autograder. But if your application that is running on your laptop or desktop computer with a URL like http://localhost... you will need to install and use the ngrok application to get a temporary URL that can be submitted to the autograder this application.

    Depending on where you put your guess.php relative to the DOCUMENT_ROOT of your PHP server, you will have a local URL to run your application similar to the following:


    Note the part of the URL after the host and port name.
    Download the ngrok ZIP file from the web site and extract it to your Desktop. Then open a terminal window or Windows command line:

    Macintosh:

        cd Desktop
        ./ngrok http 8888

    Windows

        cd Desktop
        ngrok http 80
    The last parameter to ngrok is the port where your Apache server is running.
    Once ngrok is up and running, you should see a screen similar to this:


    Note the domain name and URL that NGROK has assigned to your local server.
    Concatenate the URL from ngrok with the URL suffix from your localhost URL and enter that URL in the browser as follows:


    Make sure that you can see your application when it is being accessed by the ngrok URL. If you cannot see your application at the ngrok URL, the autograder will also not be able to see the application. So if it is not working, do not proceed to the next step until you figure out why it is not working.
    Nagivate to the autograder for the assignment in your LMS as directed by the instructor and submit the ngrok URL to the autograder:


    When you press "Evaluate", the autograder will start making connections to your web server through ngrok. The ngrok display will start showing the requests as the autograder makes requests.
    If you want more detail, you can monitor the requests in an inspector by nagivating your browser to http://localhost:4040 while ngrok is running.

## Sample Execution of the Autograder
    The following is a sample execution of the autograder on the sample application:


    The autograder tells you each URL it is retrieving and gives you the option to show the actual retrieved page that came from your server. It also tells you what it is expecting to see in the page and then if it does not find what it is looking for, it says Not found.
    The best way to figure out why the autograder is unhappy with your application is to the toggle the most recently retrieved page directly aboce the Not found message and try to figure out why there is a mis-match. In the above example, since the sample implementation uses 42 as the correct answer and the autograder was expecting 46 to be the correct answer, when the autograder tried 45, the application indicated that the guess was too high which it was actually lower than 46.

    You can run the autograder as many times as you like to work through the autograder complaints and fix the errors in your program.