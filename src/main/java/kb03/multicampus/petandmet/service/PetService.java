package kb03.multicampus.petandmet.service;

import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.mapper.PetMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PetService {

    @Autowired
    PetMapper mapper;

    public PetDto findByNo(int no){
        return mapper.findByNo(no);
    }

    public List<PetDto> findByUid(int uid){
        return mapper.findByUid(uid);
    }
    public int insertPet(int no){
        return mapper.insertPet(no);
    }
    
}
