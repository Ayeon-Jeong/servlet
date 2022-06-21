<%@ page import="hello.servlet.domain.Member" %>
<%@ page import="hello.servlet.domain.MemberRepository" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: jdh96
  Date: 2022-06-16
  Time: 오후 11:37
  To change this template use File | Settings | File Templates.
--%>
<%
    // request, response 사용 가능
    MemberRepository memberRepository = MemberRepository.getInstance();
    List<Member> members = memberRepository.findAll();

%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<a href="/index.html">메인</a>
<table>
    <thead>
    <th>id</th>
    <th>username</th>
    <th>age</th>
    </thead>
    <tbody>
    <%
        for (Member member : members) {
            out.write(" <tr>");
            out.write(" <td>" + member.getId() + "</td>");
            out.write(" <td>" + member.getUsername() + "</td>");
            out.write(" <td>" + member.getAge() + "</td>");
            out.write(" </tr>");
        }
    %>
    </tbody>
</table>
</body>
</html>