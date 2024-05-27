<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>View Articles</title>
</head>
<body>
<table>
    <thead>
    <tr>
        <th style="min-width: 100px">TITLE</th>
        <th style="min-width: 100px">CONTENT</th>
        <th style="min-width: 100px">CREATED AT</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${articles}" var="article">
        <tr>
            <td style="min-width: 100px"><a href="<c:url value="/articles/article/${article.id}"/>">${article.title}</a></td>
            <td style="width: 100px; overflow: hidden; text-overflow: ellipsis;  white-space: nowrap;">${article.content}</td>
            <td style="min-width: 100px">${article.created_at}</td>
        </tr>
    </c:forEach>
    </tbody>
    <a href="<c:url value="/articles/addArticle"/>">Add new</a>
</table>
</body>
</html>