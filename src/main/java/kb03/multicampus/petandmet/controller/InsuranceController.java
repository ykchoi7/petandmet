package kb03.multicampus.petandmet.controller;

import java.util.List;

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
	
	@GetMapping("/insurances")
	public String insurance(Model model) {
		//db에서 보험 리스트 가져오기		
        List<InsuranceDto> ins = mapper.findAll();

        for (InsuranceDto i : ins) {
    		String msg ="";

			int max = (int)(i.getMax_age()/12);
			i.setMax_age(max);
			
			int rate = (i.getCoverage_ratio()*100);
			i.setCoverage_ratio(rate);
			
			int year = (int)(i.getPeriod()/12);
			i.setPeriod(year);
			System.out.println(i.getPatella());
			
			if (i.getPatella()==true) {
				msg = "보장";
				
			} else {
				msg = "미포함";
			}
			System.out.println(msg);
			model.addAttribute("p", msg); 

		}
		model.addAttribute("ins", ins);
		
		return "insurances";
	}
	
	//petdto에서 pet breed를 가져오기 
//	@GetMapping
//    public String insurance(Model model, HttpServletRequest req) {
//        HttpSession session = req.getSession();
//        Object breed = session.getAttribute("breed"); //품종 찾아옴
//        BreedInsuranceDto bi = (BreedInsuranceDto) breed;
//        int ino = bi.getIno();//품종에 맞는 보험 가져오기
//        List<InsuranceDto> ins = InsuranceMapper.findByBreed(breed);
//        model.addAttribute("insurances", ins);
//        return "insurances";
//    }
}
