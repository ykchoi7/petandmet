package kb03.multicampus.petandmet.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kb03.multicampus.petandmet.dto.BreedInsuranceDto;
import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.mapper.InsuranceMapper;
import kb03.multicampus.petandmet.service.InsuranceService;

@Controller
public class InsuranceController {
	
	@Autowired
	InsuranceMapper mapper;
	
	@Autowired
	InsuranceService service;
	
//	@GetMapping("/insurances")
//	public String insurance(Model model) {
//		//db에서 보험 리스트 가져오기		
//        List<InsuranceDto> ins = mapper.findAll();
//
//        for (InsuranceDto i : ins) {
//
//			int max = (int)(i.getMax_age()/12);
//			i.setMax_age(max);
//			
//			int rate = (int)(i.getCoverage_ratio()*100);
//			i.setCoverage_ratio(rate);
//			
//			int year = (int)(i.getPeriod()/12);
//			i.setPeriod(year);
//		}
//		model.addAttribute("ins", ins);
//		
//		return "insurances";
//	}
	
//	@GetMapping("/insurances")
//	public String insurance(Model model) {
//		//db에서 보험 리스트 가져오기		
//        List<Map<String, Object>> li = mapper.getBreedInsurance();
//        model.addAttribute("li", li);
//		
//		return "insurances";
//	}
	

	//petdto에서 pet breed를 가져오기 
	@GetMapping("/insurances")
    public String insurance(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        Object petinfo = session.getAttribute("petinfo"); //펫 품종 불러오기 
        @SuppressWarnings("unchecked")
		List<PetDto> pd = (List<PetDto>) petinfo;
        
        String breed = "";
        for (PetDto petDto : pd) {
        	breed = petDto.getBreed();
		}
        List<Map<String, Object>> petins = mapper.getBreedInsurance(breed);
    	model.addAttribute("petins", petins);
        
        return "insurances";
         
    }
	
}
