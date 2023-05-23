package kb03.multicampus.petandmet.controller;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.ResponseBody;

import kb03.multicampus.petandmet.dto.CardDto;
import kb03.multicampus.petandmet.mapper.CardMapper;
import kb03.multicampus.petandmet.service.CardService;

@Controller
public class CardController {

	@Autowired
	CardMapper CardMapper;
	
	@Autowired
	CardService CardService;
	
	
	@GetMapping("/card") 
	public String card(Model model) {
		List<CardDto> card = CardMapper.findAll();
		model.addAttribute("cards",card); 
		return "card"; 
	}
	
	@GetMapping("/card/annual")
	public @ResponseBody List<CardDto> cardOrderbyannual(){
		List<CardDto> cards = CardService.orderbyannual();
		return cards;
	}	
	
	@GetMapping("/card/hospital")
	public @ResponseBody List<CardDto> cardOrderbyhospital(){
		List<CardDto> cards = CardService.orderbyhospital();
		return cards;
	}
	
	@GetMapping("/card/shopping")
	public @ResponseBody List<CardDto> cardOrderbyshopping(){
		List<CardDto> cards = CardService.orderbyshopping();
		return cards;
	}
	
	@GetMapping("/card/accrate")
	public @ResponseBody List<CardDto> cardOrderbyaccrate(){
		List<CardDto> cards = CardService.orderbyaccrate();
		return cards;
	}
}
