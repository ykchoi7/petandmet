package kb03.multicampus.petandmet.service;

import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.mapper.InsuranceMapper;
import kb03.multicampus.petandmet.mapper.UserMapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InsuranceService {
    @Autowired
    InsuranceMapper mapper;

    public List<InsuranceDto> findAll(){
        return mapper.findAll();
    }

}
