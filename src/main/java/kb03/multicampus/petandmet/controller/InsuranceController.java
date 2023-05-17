package kb03.multicampus.petandmet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.mapper.InsuranceMapper;

@Controller
public class InsuranceController {
	
	@Autowired
	InsuranceMapper mapper;
	
	@GetMapping("/insurances")
	public String insurance(Model model) {
		//db에서 보험 리스트 가져오기		
        List<InsuranceDto> ins = mapper.findAll();
		model.addAttribute("ins", ins);
		
		return "insurances";
	}
}
