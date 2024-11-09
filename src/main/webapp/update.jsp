<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
    List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");
    int id = Integer.parseInt(request.getParameter("id"));

    // 수정된 데이터 가져오기
    String category = request.getParameter("category");
    String code = request.getParameter("code");
    String name = request.getParameter("name");
    String englishRatio = request.getParameter("englishRatio");
    String credits = request.getParameter("credits");
    String classNum = request.getParameter("classNum");
    String professor = request.getParameter("professor");
    String classTime = request.getParameter("classTime");
    String classRoom = request.getParameter("classRoom");
    String reEnrollment = request.getParameter("reEnrollment");
    String type = request.getParameter("type");

    // 과목 정보 업데이트
    Map<String, String> subject = subjects.get(id);
    subject.put("category", category);
    subject.put("code", code);
    subject.put("name", name);
    subject.put("englishRatio", englishRatio);
    subject.put("credits", credits);
    subject.put("classNum", classNum);
    subject.put("professor", professor);
    subject.put("classTime", classTime);
    subject.put("classRoom", classRoom);
    subject.put("reEnrollment", reEnrollment);
    subject.put("type", type);

    session.setAttribute("subjects", subjects);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>수정 완료</title>
</head>
<body>
<h2>수정이 완료되었습니다.</h2>
<a href="index.jsp">목록으로 돌아가기</a>
</body>
</html>
