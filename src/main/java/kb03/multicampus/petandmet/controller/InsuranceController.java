package kb03.multicampus.petandmet.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb03.multicampus.petandmet.dto.InsuranceDto;

@Controller
public class InsuranceController {
	
	@GetMapping("/insurances")
	public String insurance(Model model) {
		//db에서 보험 리스트 가져오기		
		model.addAttribute("보험 상세 정보");
		
		return "insurances";
	}
}
