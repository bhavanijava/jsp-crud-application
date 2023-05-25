<!DOCTYPE html>
<html>
 <head>
    <title>Login Here</title>
    <style>
    h1{
    color:red;
    }
    
    </style>
 </head>
 <body>
 <fieldset>
            <center><form>
                <h1>LoginForm</h1>
                <a href="home.jsp">Home</a>
                <a href="contact.html">Contact</a>
                <a href="reg.jsp">Register</a>
                <a href="login.jsp">Login</a>
            </form>
            </center>
        
    <fieldset>
        <form action="LoginCode.jsp" method="post">
                <center>
                    <table>
                        <tr>
                            <td>
                                Name:
                            </td>
                            <td><input type="text" name="uname"></td>
                        </tr>
                        <tr>
                            <td>
                                Password:
                            </td>
                            <td><input type="password" name="psw"></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Login"></td>
                            

                        </tr>
                    </table>
                </center>
        </form>
    </fieldset>
    </fieldset>
 </body>
</html>