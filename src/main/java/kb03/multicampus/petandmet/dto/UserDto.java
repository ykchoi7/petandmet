package kb03.multicampus.petandmet.dto;

import lombok.Data;
import lombok.RequiredArgsConstructor;

import java.util.Date;
@Data
public class UserDto {
    private String id;
    private String pw;
    private String name;
    private String phone;
    private String birth;
    private String address;
    private String image;
}
