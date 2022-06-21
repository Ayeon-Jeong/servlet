<%@ page import="hello.servlet.domain.Member" %>
<%@ page import="hello.servlet.domain.MemberRepository" %><%--
  Created by IntelliJ IDEA.
  User: jdh96
  Date: 2022-06-16
  Time: 오후 11:37
  To change this template use File | Settings | File Templates.
--%>
<%
    // request, response 사용 가능
    MemberRepository memberRepository = MemberRepository.getInstance();

    System.out.println("MemberSaveServlet.service");
    String username = request.getParameter("username");
    int age = Integer.parseInt(request.getParameter("age"));

    Member member = new Member(username, age);
    memberRepository.save(member);
%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
성공
<ul>
    <li>id=<%=member.getId()%></li>
    <li>username=<%=member.getUsername()%></li>
    <li>age=<%=member.getAge()%></li>
</ul>
<a href="/index.html">
    메인
</a>
</body>
</html>