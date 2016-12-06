<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false"%>

<html>
<head>
    <title>Manage Cafeteria</title>
    <link rel='stylesheet' href="css\bootstrap.min.css" type='text/css' media='all'>
    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #8FBC8F;
        }

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<h3>Cafeteria List</h3>
<table class="tg">
    <tr>
        <th width="80">ID</th>
        <th width="120">CafeName</th>
        <th width="120">Address</th>
    </tr>
    <c:if test="${!empty cafeterias}">
        <c:forEach items="${cafeterias}" var="cafeteria">
            <tr>
                <td><c:out value="${cafeteria.cafeId}"/></td>
                <td><c:out value="${cafeteria.cafeName}"/></td>
                <td><c:out value="${cafeteria.cafeAddress}"/></td>
            </tr>
        </c:forEach>
    </c:if>
</table>

</body>
</html>
