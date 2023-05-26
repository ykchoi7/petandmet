package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PetDto {
	private int no; //기본키 pk
    private int uid; //주인
    private int id; //등록번호
    private String pet_type; //강아지 or 고양이 - 라디오박스
    private String name; //이름
    private String birth;
    private int weight;
    private String gender; //성별 - 라디오박스
    private boolean isNeutered; //중성화 여부 - 라디오박스
    private String pet_image;
    private String breed; //종 - 옵션
    private boolean patella; //슬개골, 탈구질환
    private boolean tooth; //구강질환
    private boolean skin; //피부질환
    private boolean scaling; //스켈링


}
