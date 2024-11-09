<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>과목 추가</title>
</head>
<body>
<h2>과목 추가</h2>
<form action="insert.jsp" method="post">
    <table>
        <tr>
            <th>이수구분</th>
            <td><input type="text" name="category" required></td>
        </tr>
        <tr>
            <th>과목코드</th>
            <td><input type="text" name="code" required></td>
        </tr>
        <tr>
            <th>과목명</th>
            <td><input type="text" name="name" required></td>
        </tr>
        <tr>
            <th>영어비율</th>
            <td><input type="text" name="englishRatio" required></td>
        </tr>
        <tr>
            <th>학점</th>
            <td><input type="text" name="credits" required></td>
        </tr>
        <tr>
            <th>분반</th>
            <td><input type="text" name="classNum" required></td>
        </tr>
        <tr>
            <th>담당교수</th>
            <td><input type="text" name="professor" required></td>
        </tr>
        <tr>
            <th>수업시간</th>
            <td><input type="text" name="classTime" required></td>
        </tr>
        <tr>
            <th>강의실</th>
            <td><input type="text" name="classRoom" required></td>
        </tr>
        <tr>
            <th>재이수</th>
            <td><input type="text" name="reEnrollment"></td>
        </tr>
        <tr>
            <th>유형</th>
            <td><input type="text" name="type" required></td>
        </tr>
    </table>
    <input type="submit" value="추가하기">
</form>
<a href="index.jsp">목록으로 돌아가기</a>
</body>
</html>
