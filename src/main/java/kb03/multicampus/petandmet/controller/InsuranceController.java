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

			int max = (int)(i.getMax_age()/12);
			i.setMax_age(max);
			
			int rate = (int)(i.getCoverage_ratio()*100);
			i.setCoverage_ratio(rate);
			
			int year = (int)(i.getPeriod()/12);
			i.setPeriod(year);
			System.out.println(i.getPatella());

		}
		model.addAttribute("ins", ins);
		
		return "insurances";
	}
	

	//petdto에서 pet breed를 가져오기 
	@GetMapping
    public String insurance(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
        Object p1 = session.getAttribute("p1"); //품종 찾아옴
        PetDto pd = (PetDto) p1;
        String breed = pd.getBreed();
        
        List<InsuranceDto> p1ins = mapper.findByBreed(breed);
        model.addAttribute("p1ins", p1ins);
        return "insurances";
         
    }
	
}
