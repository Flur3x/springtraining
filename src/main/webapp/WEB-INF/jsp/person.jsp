<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <spring:url value="resources/css/main.css" var="mainCss" />
    <link href="${mainCss}" rel="stylesheet" />
    <title>Neue Person eintragen</title>
</head>
<body>
<div id="container">
    <h2>Wie darf ich dich nennen?</h2>
    <form:form method="POST" action="/">
        <table>
            <tr>
                <td>Vorname:</td>
                <td><form:input path="firstname" /></td>
            </tr>
            <tr>
                <td>Nachname:</td>
                <td><form:input path="lastname" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Best&auml;tigen" />
                </td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>