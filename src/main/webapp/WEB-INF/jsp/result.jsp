<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <spring:url value="resources/css/main.css" var="mainCss" />
    <link href="${mainCss}" rel="stylesheet" />
    <title>Person eingetragen</title>
</head>
<body>
<div id="container">
    <h2>Die Person wurde eingetragen!</h2>
    <table>
        <tr>
            <td>Vorname</td>
            <td>${firstname}</td>
        </tr>
        <tr>
            <td>Nachname</td>
            <td>${lastname}</td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="button" value="Neue Person" onclick="window.location='/';" />
            </td>
        </tr>
    </table>
</div>
</body>
</html>