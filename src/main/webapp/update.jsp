<!DOCTYPE html>
<html>
    <head>
        <title>CRUD1</title>
        <style>
            h1{
                color: red;
            }
            tr{
                color: blue;
            }
        </style>
    </head>
    <body>
    <fieldset>
            <center><form>
                <h1>Registeration Form</h1>
                <a href="home.jsp">Home</a>
                <a href="">Contact</a>
                <a href="reg.jsp">Register</a>
                <a href="login.jsp">Login</a>
            </form>
            </center>
    
        
        <form action="UpdateCode.jsp" method="post">
            <fieldset>
                <table>
                <h1>Update Here</h1>
                <tr>
                    <td>Name</td>
                    <td><input type="text" name="uname"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="psw"></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><input type="email" name="mail"></td>
                </tr>
                <tr>
                    <td> </td>
                    <td><input type="submit" value="Update"></td>
                </tr>
               
                 </table>
            </fieldset>
        </form>
        </fieldset>
    
    </body>
</html>
