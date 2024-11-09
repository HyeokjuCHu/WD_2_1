<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
    List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");
    if (subjects == null) {
        subjects = new ArrayList<>();
    }

    // 새 과목 정보 가져오기
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

    // 새 과목 추가
    Map<String, String> newSubject = new HashMap<>();
    newSubject.put("category", category);
    newSubject.put("code", code);
    newSubject.put("name", name);
    newSubject.put("englishRatio", englishRatio);
    newSubject.put("credits", credits);
    newSubject.put("classNum", classNum);
    newSubject.put("professor", professor);
    newSubject.put("classTime", classTime);
    newSubject.put("classRoom", classRoom);
    newSubject.put("reEnrollment", reEnrollment);
    newSubject.put("type", type);

    subjects.add(newSubject);
    session.setAttribute("subjects", subjects);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>추가 완료</title>
</head>
<body>
<h2>과목이 추가되었습니다.</h2>
<a href="index.jsp">목록으로 돌아가기</a>
</body>
</html>
