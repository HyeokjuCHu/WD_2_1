<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");

    // 수정된 데이터 받기
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    // 데이터 업데이트
    Map<String, String> subject = subjects.get(id);
    subject.put("title", title);
    subject.put("content", content);

    // 세션에 업데이트된 과목 목록 저장
    session.setAttribute("subjects", subjects);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수정 완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">수정 완료</h2>
    <p>제목: <%= title %></p>
    <p>내용: <%= content %></p>
    <a href="index.jsp" class="btn btn-secondary mt-3">목록으로 돌아가기</a>
</div>
</body>
</html>
