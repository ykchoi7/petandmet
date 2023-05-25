package kb03.multicampus.petandmet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kb03.multicampus.petandmet.dto.CardDto;
import kb03.multicampus.petandmet.mapper.CardMapper;

@Service
public class CardService {
	@Autowired
    CardMapper cardmapper;

    public List<CardDto> findAll(){
        return cardmapper.findAll();
    }


	public List<CardDto> orderbyannual() {
		return cardmapper.orderbyannual();
	}


	public List<CardDto> orderbyhospital() {
		return cardmapper.orderbyhospital();
	}


	public List<CardDto> orderbyshopping() {
		return cardmapper.orderbyshopping();
	}


	public List<CardDto> orderbyaccrate() {
		return cardmapper.orderbyaccrate();
	}
    
	
}
