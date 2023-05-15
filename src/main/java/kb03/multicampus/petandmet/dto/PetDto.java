package kb03.multicampus.petandmet.dto;

import lombok.Data;

@Data
public class PetDto {
    private int uid;
    private int id;
    private String pet_type;
    private String name;
    private String birth;
    private String gender;
    private boolean isNeutered;
    private String pet_image;
    private String breed;
    private boolean patella;
    private boolean tooth;
    private boolean skin;
    private boolean scaling;
}
