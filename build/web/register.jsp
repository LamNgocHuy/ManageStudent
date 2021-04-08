<%-- 
    Document   : register
    Created on : 13 thg 6, 2020, 18:58:45
    Author     : macbookpro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: black;
            }

            * {
                box-sizing: border-box;
            }

            /* Add padding to containers */
            .container {
                padding: 16px;
                background-color: white;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Overwrite default styles of hr */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for the submit button */
            .registerbtn {
                background-color: #4CAF50;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .registerbtn:hover {
                opacity: 1;
            }

            /* Add a blue text color to links */
            a {
                color: dodgerblue;
            }

            /* Set a grey background color and center the text of the "sign in" section */
            .signin {
                background-color: #f1f1f1;
                text-align: center;
            }
        </style>
        <script type="text/javascript">
            function matchpass() {
                var firstpassword = document.form.pass.value;
                var secondpassword = document.form.rePass.value;

                if (firstpassword == secondpassword) {
                    return true;
                } else {
                    alert("password must be same!");
                    return false;
                }
            }
        </script>
    </head>
    <body>

        <form name ="form" action="AddServlet" method="GET" onsubmit="return matchpass()">
            <div class="container">
                <h1>Register</h1>
                <p>Please fill in this form to register new User</p>
                <hr>




                <label for="email"><b>Email</b></label>
                <input type="text" placeholder="Enter Email" name="email"  required>


                <label for="name"><b>Full Name</b></label>
                <input type="text" placeholder="Enter Full Name" name="name"  required>


                <label for="psw"><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="pass"  required>

                <label for="psw-repeat"><b>Repeat Password</b></label>
                <input type="password" placeholder="Repeat Password" name="rePass"required>


                <hr>


                <button type="submit" class="registerbtn">Register</button>
            </div>


        </form>

        <br>

    </body>
</html>