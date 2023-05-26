package kb03.multicampus.petandmet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kb03.multicampus.petandmet.dto.CardDto;
import kb03.multicampus.petandmet.dto.SavingsDto;
import kb03.multicampus.petandmet.mapper.SavingMapper;

@Service
public class SavingService {
	@Autowired
    SavingMapper savemapper;

    public List<SavingsDto> findAllsave(){
        return savemapper.findAllsave();
    }
    

}
