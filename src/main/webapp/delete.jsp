<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");

    // 항목 삭제
    subjects.remove(id);

    // 세션에 업데이트된 과목 목록 저장
    session.setAttribute("subjects", subjects);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>삭제 완료</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h2 class="text-center">삭제 완료</h2>
    <p>선택한 항목이 삭제되었습니다.</p>
    <a href="index.jsp" class="btn btn-secondary mt-3">목록으로 돌아가기</a>
</div>
</body>
</html>
