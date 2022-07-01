<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        <link rel="stylesheet" type="text/css" href="<%= request.getContextPath()%>/login.css"/>
        <title>Login Page</title>
        <script language="javascript" type="text/javascript">
            function PlayTest() {
                try {
                    window.parent.frames('Control').NextRequest();
                } catch (e) {
                }
                ;
            }
        </script>
    </head>
    <body onload="PlayTest()">
        <div id="container">
            <table cellspacing="0" cellpadding="0" border="0">
                <tr>
                    <td id="topLeft"></td>
                    <td id="top"></td>
                    <td id="topRight"></td>
                </tr>
                <tr>
                    <td id="left"></td>
                    <td id="content">
                        <div id="logo">
                            <img src="<%= request.getContextPath()%>/images/babel_notext.png" alt="Logo di Babel" width="250" height="250">
                        </div>
                        <div id="loginBox">
                            <h1>Babel Aosp Ferrara</h1>
                            
                                <% if ("true".equals(request.getAttribute("loginFailed"))) { %>
                                <p><font color="red"> Credenziali di accesso non riconosciute </font> </p>
                                <% } %>
                                <% if(request.getAttribute("actionUrl") != null){ %>
                                    <form action="<%=request.getAttribute("actionUrl")%>" method="post">
                                    <% }else{ %>
                                    <form action="j_security_check" method="post">
                                    <% } %>
                                        <table>
                                            <tr>
                                                <td><label for="username">Username:</label></td>
                                                <td><input name="j_username" type="text" id="username" autocapitalize="off" /></td></tr>
                                            <tr>
                                                <td><label for="password">Password:</label></td>
                                                <td><input name="j_password" type="password" id="password" /></td></tr>
                                            <tr>
                                                <td></td>
                                                <td><input id="LOGIN" width="83" type="image" height="28" border="0" name="I1" src="<%= request.getContextPath()%>/images/login.gif"></td>
                                            </tr>
                                        </table>
                                    </form>                       
                        </div>
                        <div id="info">
                            
                        </div>
                        <div id="footer">
                            <img border="0" src="<%= request.getContextPath()%>/images/ImmagineIntestazione.gif" width="150" height="40">
                        </div>
                    </td>
                    <td id="right"></td>
                </tr>
                <tr>
                    <td id="bottomLeft"></td>
                    <td id="bottom"></td>
                    <td id="bottomRight"></td>
                </tr>
            </table>

        </div>
                                                        <div id="reqdiv" class=HelpReqDiv style="display:none"></div>
                                                        <div id="reqVdiv" class=HelpReqDiv style="display:none"></div>
                                                        <div id="itemdiv" class=HelpItemDiv style="display:none"></div>
                                                        <img id="helpcurs" class=HelpCurs src="dttimg/helpcurs.gif" style="display:none">                                        
    </body>
</html>
