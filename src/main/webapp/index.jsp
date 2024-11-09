<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%
  // 세션에서 과목 목록을 가져옵니다.
  List<Map<String, String>> subjects = (List<Map<String, String>>) session.getAttribute("subjects");
  if (subjects == null) {
    subjects = new ArrayList<>();

    // 초기 데이터 추가
    Map<String, String> initialSubject = new HashMap<>();
    initialSubject.put("category", "전공선택");
    initialSubject.put("code", "ECE20009");
    initialSubject.put("name", "웹 서비스 개발");
    initialSubject.put("englishRatio", "0%");
    initialSubject.put("credits", "3");
    initialSubject.put("classNum", "03");
    initialSubject.put("professor", "장소연");
    initialSubject.put("classTime", "화2,금2");
    initialSubject.put("classRoom", "NTH 412");
    initialSubject.put("reEnrollment", "");
    initialSubject.put("type", "A+/F");

    subjects.add(initialSubject);
  }
  session.setAttribute("subjects", subjects);
%>
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>과목 목록</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
    .logo {
      width: 50px; /* 원하는 크기로 조정 */
      height: auto; /* 비율 유지 */
      position: absolute; /* 절대 위치 지정 */
      top: 10px; /* 상단에서의 위치 */
      left: 10px; /* 왼쪽에서의 위치 */
    }
  </style>
</head>
<body>
<img src="handong.svg" alt="Logo" class="logo">
<div class="container mt-5">
  <h2 class="text-center">과목 목록</h2>
  <table class="table table-bordered">
    <thead>
    <tr>
      <th>이수구분</th>
      <th>과목코드</th>
      <th>과목명</th>
      <th>영어비율</th>
      <th>학점</th>
      <th>분반</th>
      <th>담당교수</th>
      <th>수업시간</th>
      <th>강의실</th>
      <th>재이수</th>
      <th>유형</th>
      <th>작업</th>
    </tr>
    </thead>
    <tbody>
    <%
      for (int i = 0; i < subjects.size(); i++) {
        Map<String, String> subject = subjects.get(i);
    %>
    <tr>
      <td><%= subject.get("category") %></td>
      <td><%= subject.get("code") %></td>
      <td><%= subject.get("name") %></td>
      <td><%= subject.get("englishRatio") %></td>
      <td><%= subject.get("credits") %></td>
      <td><%= subject.get("classNum") %></td>
      <td><%= subject.get("professor") %></td>
      <td><%= subject.get("classTime") %></td>
      <td><%= subject.get("classRoom") %></td>
      <td><%= subject.get("reEnrollment") %></td>
      <td><%= subject.get("type") %></td>
      <td>
        <a href="view.jsp?id=<%= i %>" class="btn btn-info btn-sm">보기</a>
        <a href="edit.jsp?id=<%= i %>" class="btn btn-warning btn-sm">수정</a>
        <a href="delete.jsp?id=<%= i %>" class="btn btn-danger btn-sm" onclick="return confirm('정말 삭제하시겠습니까?');">삭제</a>
      </td>
    </tr>
    <%
      }
    %>
    </tbody>
  </table>
  <a href="add.jsp" class="btn btn-primary">데이터 추가</a>
</div>
</body>
</html>
