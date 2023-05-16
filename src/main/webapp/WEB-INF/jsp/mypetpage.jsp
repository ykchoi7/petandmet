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
<h1>마이 펫 페이지</h1>
마이 펫은 몇 마리? = ${pets.size()}
<c:forEach items = "${pets}" var = "pet">
<table>
    <tr>
        <td rowspan="3">사진</td>
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
        <td>${pet.name}</td>
    </tr>
    <tr>
        <td>동물 종류</td>
        <td>${pet.pet_type}</td>
    </tr>
    <tr>
        <td>품종</td>
        <td>말티즈</td>
    </tr>
    <tr>
        <td>등록번호</td>
        <td>987654321</td>
    </tr>
    <tr>
        <td>생년월일</td>
        <td>2023.01.01</td>
    </tr>
    <tr>
        <td>성별</td>
        <td>여</td>
    </tr>
    <tr>
        <td>중성화 여부</td>
        <td>NO</td>
    </tr>
    <tr>
        <td>과거 병력</td>
        <td>피부 질환</td>
    </tr>

</table>
</c:forEach>
<button>마이펫 정보 수정 >> </button>
<br>
<button>마이펫 추가 삭제 >> </button>
</body>
</html>