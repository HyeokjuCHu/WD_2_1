<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
    List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");
    int id = Integer.parseInt(request.getParameter("id"));
    Map<String, String> subject = subjects.get(id);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>과목 수정</title>
</head>
<body>
<h2>과목 수정</h2>
<form action="update.jsp?id=<%= id %>" method="post">
    <table>
        <tr>
            <th>이수구분</th>
            <td><input type="text" name="category" value="<%= subject.get("category") %>"></td>
        </tr>
        <tr>
            <th>과목코드</th>
            <td><input type="text" name="code" value="<%= subject.get("code") %>"></td>
        </tr>
        <tr>
            <th>과목명</th>
            <td><input type="text" name="name" value="<%= subject.get("name") %>"></td>
        </tr>
        <tr>
            <th>영어비율</th>
            <td><input type="text" name="englishRatio" value="<%= subject.get("englishRatio") %>"></td>
        </tr>
        <tr>
            <th>학점</th>
            <td><input type="text" name="credits" value="<%= subject.get("credits") %>"></td>
        </tr>
        <tr>
            <th>분반</th>
            <td><input type="text" name="classNum" value="<%= subject.get("classNum") %>"></td>
        </tr>
        <tr>
            <th>담당교수</th>
            <td><input type="text" name="professor" value="<%= subject.get("professor") %>"></td>
        </tr>
        <tr>
            <th>수업시간</th>
            <td><input type="text" name="classTime" value="<%= subject.get("classTime") %>"></td>
        </tr>
        <tr>
            <th>강의실</th>
            <td><input type="text" name="classRoom" value="<%= subject.get("classRoom") %>"></td>
        </tr>
        <tr>
            <th>재이수</th>
            <td><input type="text" name="reEnrollment" value="<%= subject.get("reEnrollment") %>"></td>
        </tr>
        <tr>
            <th>유형</th>
            <td><input type="text" name="type" value="<%= subject.get("type") %>"></td>
        </tr>
    </table>
    <input type="submit" value="수정하기">
</form>
<a href="index.jsp">목록으로 돌아가기</a>
</body>
</html>
