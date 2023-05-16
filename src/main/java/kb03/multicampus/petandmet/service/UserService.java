package kb03.multicampus.petandmet.service;

import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.mapper.UserMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserMapper mapper;

    public UserDto findByNo(int no){
        return mapper.findByNo(no);
    }

}
