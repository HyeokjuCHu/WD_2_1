<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
    // 세션에서 과목 목록을 가져옵니다.
    List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");
    if (subjects == null) {
        subjects = new ArrayList<>();
    }

    // 폼에서 전달된 데이터 받기
    String title = request.getParameter("title");
    String content = request.getParameter("content");

    // 새로운 과목 추가
    Map<String, String> newSubject = new HashMap<>();
    newSubject.put("title", title); // 제목
    newSubject.put("content", content); // 내용
    subjects.add(newSubject);

    // 세션에 업데이트된 과목 목록 저장
    session.setAttribute("subjects", subjects);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>작성 완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">작성 완료</h2>
    <p>제목: <%= title %></p>
    <p>내용: <%= content %></p>
    <a href="index.jsp" class="btn btn-secondary mt-3">목록으로 돌아가기</a>
</div>
</body>
</html>
