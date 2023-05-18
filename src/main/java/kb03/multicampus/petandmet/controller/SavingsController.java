package kb03.multicampus.petandmet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb03.multicampus.petandmet.dto.SavingsDto;
import kb03.multicampus.petandmet.mapper.SavingMapper;
import kb03.multicampus.petandmet.service.SavingService;


@Controller
public class SavingsController {
	@Autowired
	SavingMapper SavingMapper;
	
	@Autowired
	SavingService SavingsService;
	
	@GetMapping("/savings")
	public String savings(Model model) {
        List<SavingsDto> savings = SavingMapper.findAllsave();
        return "savings";
	}
}
