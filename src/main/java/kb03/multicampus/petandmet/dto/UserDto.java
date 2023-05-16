package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.RequiredArgsConstructor;

import java.util.Date;
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
    private int no;
    private String id;
    private String pw;
    private String name;
    private String phone;
    private String birth;
    private String address;
    private String image;
    private String email;
}
