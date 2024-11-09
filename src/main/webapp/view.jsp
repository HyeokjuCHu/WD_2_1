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
  <title>과목 상세보기</title>
</head>
<body>
<h2>과목 상세보기</h2>
<table>
  <tr>
    <th>이수구분</th>
    <td><%= subject.get("category") %></td>
  </tr>
  <tr>
    <th>과목코드</th>
    <td><%= subject.get("code") %></td>
  </tr>
  <tr>
    <th>과목명</th>
    <td><%= subject.get("name") %></td>
  </tr>
  <tr>
    <th>영어비율</th>
    <td><%= subject.get("englishRatio") %></td>
  </tr>
  <tr>
    <th>학점</th>
    <td><%= subject.get("credits") %></td>
  </tr>
  <tr>
    <th>분반</th>
    <td><%= subject.get("classNum") %></td>
  </tr>
  <tr>
    <th>담당교수</th>
    <td><%= subject.get("professor") %></td>
  </tr>
  <tr>
    <th>수업시간</th>
    <td><%= subject.get("classTime") %></td>
  </tr>
  <tr>
    <th>강의실</th>
    <td><%= subject.get("classRoom") %></td>
  </tr>
  <tr>
    <th>재이수</th>
    <td><%= subject.get("reEnrollment") %></td>
  </tr>
  <tr>
    <th>유형</th>
    <td><%= subject.get("type") %></td>
  </tr>
</table>
<a href="index.jsp">목록으로 돌아가기</a>
</body>
</html>
