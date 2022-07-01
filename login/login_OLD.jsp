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

    <body style="margin:0;" onload="PlayTest()">
        <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse; background-color: transparent;" bordercolor="#111111" width="100%" height="100%">
            <tr>
                <td colspan=3 style="background-color:#FFFFFF">&nbsp;</td>
            </tr>
            <tr>
                <td style="background-color:#FFFFFF;">&nbsp;</td>
                <td width="700" height="450" valign="top" style="background-color: #FFFFFF;">
                    <table cellspacing=0 cellpadding=0 style="background-color: transparent">
                        <tr>
                            <td style="width: 8px; height: 8px; background-image:url('<%= request.getContextPath()%>/images/wtl.gif');"></td>
                            <td style="height: 8px; background-image:url('<%= request.getContextPath()%>/images/wtop.gif');"></td>
                            <td style="width: 8px; height: 8px; background-image:url(<%= request.getContextPath()%>/images/wtr.gif);"></td>
                        </tr>
                        <tr>
                            <td style="width: 8px; background-image:url(<%= request.getContextPath()%>/images/wleft.gif);"></td>
                            <td style="height: 434px; width: 684px; background-color: white; background-repeat:no-repeat; background-position: bottom left;">

                                <p align="center">
                                <img border="0" src="<%= request.getContextPath()%>/images/ImmagineIntestazione.gif" width="398" height="87"><p align="center">
                                    &nbsp;
                                <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="100%" height="20">
                                    <tr>
                                        <td width="30%" height="20">&nbsp;</td>
                                        <td width="67%" height="20"><b><font face="Trebuchet MS" size="4">

                                                    <p><font color="#008066">Babel - Login (SSO)</font></p>
                                                            <% if ("true".equals(request.getAttribute("loginFailed"))) { %>
                                                    <p><font color="red"> Credeziali di accesso non riconosciute </font> </p>
                                                            <% } %>
                                                            <% if(request.getAttribute("actionUrl") != null){ %>
                                                    <form action="<%=request.getAttribute("actionUrl")%>" method="post">
                                                        <% }else{ %>
                                                        <form action="j_security_check" method="post">
                                                            <% } %>
                                                            <table>
                                                                <tr>
                                                                    <td width="40%"><label for="username"><font color="#008066">Username:</font></label></td>
                                                                    <td><input name="j_username" type="text" id="username" autocapitalize="off" /></td></tr>
                                                                <tr>
                                                                    <td><label for="password"><font color="#008066">Password:</font></label></td>
                                                                    <td><input name="j_password" type="password" id="password" /></td></tr>
                                                                <tr>
                                                                    <td></td>
                                                                    <td><button type="submit" value="Login" >Login</button></td>
                                                                </tr>
                                                            </table>
                                                        </form>
                                                        </td>
                                                        </tr>
                                                        </table>

                                                        </td>
                                                        <td style="width: 8px; background-image:url(<%= request.getContextPath()%>/images/wright.gif);"></td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 8px; height: 8px; background-image:url(<%= request.getContextPath()%>/images/wbl.gif);"></td>
                                                            <td style="height: 8px; background-image:url(<%= request.getContextPath()%>/images/wbottom.gif);"></td>
                                                            <td style="width: 8px; height: 8px; background-image:url(<%= request.getContextPath()%>/images/wbr.gif);"></td>
                                                        </tr>
                                                        </table>

                                                        </td>
                                                        <td style="background-color:#FFFFFF">&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="background-color:#FFFFFF" colspan=3>&nbsp;</td>
                                                        </tr>
                                                        </table>
                                                        <div id="reqdiv" class=HelpReqDiv style="display:none"></div>
                                                        <div id="reqVdiv" class=HelpReqDiv style="display:none"></div>
                                                        <div id="itemdiv" class=HelpItemDiv style="display:none"></div>
                                                        <img id="helpcurs" class=HelpCurs src="dttimg/helpcurs.gif" style="display:none">
                                                        </body>
                                                        </html>

