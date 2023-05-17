<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>페트와 메트</title>
    <style>
        th,td{
            border: 1px solid #444444;
        }

    </style>
</head>
<body>
<h1>마이 페이지</h1>
<table>
    <tr>
        <td rowspan="3"><img src = "${user.image}" style ="width:100px;height:100px"></td>
    </tr>
    <tr>
        <td>사진 업로드</td>
    </tr>
    <tr>
        <td>사진 삭제</td>
    </tr>
</table>

<table style="border: black; align:center;">
    <tr>
        <td>이름</td>
        <td>${user.name}</td>
    </tr>
    <tr>
        <td>아이디</td>
        <td>${user.id}</td>
    </tr>
    <tr>
        <td>이메일</td>
        <td>${user.email}</td>
    </tr>
    <tr>
        <td>전화번호</td>
        <td>${user.phone}</td>
    </tr>
    <tr>
        <td>주소</td>
        <td>${user.address}</td>
    </tr>
</table>
<button type = "button" onclick = "location.href = 'mypetpage'";>마이펫 정보 확인하기 >> </button>
<br>
<button>마이펫 추가 등록하기 >> </button>
</body>
</html>