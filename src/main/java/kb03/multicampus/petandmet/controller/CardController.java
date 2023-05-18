package kb03.multicampus.petandmet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb03.multicampus.petandmet.dto.CardDto;
import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.mapper.CardMapper;
import kb03.multicampus.petandmet.mapper.InsuranceMapper;
import kb03.multicampus.petandmet.service.CardService;
import kb03.multicampus.petandmet.service.InsuranceService;

@Controller
public class CardController {

	@Autowired
	CardMapper CardMapper;
	
	@Autowired
	CardService CardService;
	
	@GetMapping("/card")
	public String card(Model model) {
        List<CardDto> card = CardMapper.findAll();
    return "card";
	}
}
