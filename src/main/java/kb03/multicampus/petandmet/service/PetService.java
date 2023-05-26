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
    public void insertPet(int uid, int id, String pet_type, String name, String birth, int weight, String gender, boolean isNeutered, String pet_image, String breed, boolean patella, boolean tooth, boolean skin, boolean scaling){
        mapper.insertPet(uid,id,pet_type,name,birth,weight,gender,isNeutered,pet_image,breed,patella,tooth,skin,scaling);
    }
    
}
