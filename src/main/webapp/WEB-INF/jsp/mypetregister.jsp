<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>페트와 메트</title>

</head>
<body>
<h1>마이 펫 등록</h1>
<form method = "post" action="/mypetpage/mypetregister">
    <label>등록번호 <input type="text" name="id"></label><br>
    <label>반려동물 종류
        <input type="radio" name="pet_type" value="고양이" id="catRadio">
        <label for="catRadio">고양이</label>

        <input type="radio" name="pet_type" value="강아지" id="dogRadio">
        <label for="dogRadio">강아지</label>
    </label>

    <label><div id="breedSelection">
        <select name = "breedSelect" id="breedSelect"></select>
    </div></label>

    <label>이름<input type="text" name="name"></label><br>
    <label>생년월일 <input type="date" name="birth"></label><br>
    <label>몸무게 <input type="number" name="weight"></label>kg<br>
    <label>성별
        <input type="radio" name="gender" value="male" id="male">수컷
        <input type="radio" name="gender" value="female" id="female">암컷
    </label><br>
    <label>중성화 여부
        <input type="radio" name="isNeutered" value="true" id="neutered"> O
        <input type="radio" name="isNeutered" value="false" id="no_neutered"> X
    </label><br>
    <label>슬개골, 탈구질환 여부
        <input type="radio" name="patella" value="true" id="patella"> O
        <input type="radio" name="patella" value="false" id="no_patella"> X
    </label><br>
    <label>구강질환 여부
        <input type="radio" name="tooth" value="true" id="tooth"> O
        <input type="radio" name="tooth" value="false" id="no_tooth"> X
    </label><br>
    <label>피부질환 여부
        <input type="radio" name="skin" value="true" id="skin"> O
        <input type="radio" name="skin" value="false" id="no_skin"> X
    </label><br>
    <label>스켈링 여부
        <input type="radio" name="scaling" value="true" id="scaling"> O
        <input type="radio" name="scaling" value="false" id="no_scaling"> X
    </label><br>
    <input type="submit" value="마이 펫 추가">
</form>

<script>
    const catBreeds = ['샴', '페르시안', '러시안 블루'];
    const dogBreeds = ['말티즈','래브라도 리트리버', '불독', '시바견'];

    const catRadio = document.getElementById('catRadio');
    const dogRadio = document.getElementById('dogRadio');
    const breedSelection = document.getElementById('breedSelection');
    const breedSelect = document.getElementById('breedSelect');

    catRadio.addEventListener('change', function() {
        if (catRadio.checked) {
            populateBreeds(catBreeds);
            breedSelection.style.display = 'block';
        }
    });

    dogRadio.addEventListener('change', function() {
        if (dogRadio.checked) {
            populateBreeds(dogBreeds);
            breedSelection.style.display = 'block';
        }
    });

    function populateBreeds(breeds) {
        breedSelect.innerHTML = '';
        for (let i = 0; i < breeds.length; i++) {
            const option = document.createElement('option');
            option.value = breeds[i];
            option.text = breeds[i];
            breedSelect.appendChild(option);
        }
    }
</script>
</body>

</html>