package kb03.multicampus.petandmet.controller;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kb03.multicampus.petandmet.dto.BreedInsuranceDto;
import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.ProductDto;
import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.mapper.InsuranceMapper;
import kb03.multicampus.petandmet.service.InsuranceService;
import kb03.multicampus.petandmet.service.PetService;
import kb03.multicampus.petandmet.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/insurances")
@RequiredArgsConstructor
@Slf4j
public class InsuranceController {
	
	private final InsuranceMapper mapper;
	private final InsuranceService service;
	private final PetService petService;
	
	//petdto에서 pet breed를 가져오기 
	@GetMapping
    public String insurance(Model model, HttpServletRequest req) {
        HttpSession session = req.getSession();
		Object object = session.getAttribute("user");
		
		if (object == null) {
			return "redirect:/login";
		}
		UserDto user = (UserDto) object;
		List<PetDto> pd = petService.findByUid(user.getNo());
		
		for (int i = 0; i < pd.size(); i++) {
			String breed = pd.get(i).getBreed().toString();
	        List<Map<String, Object>> petins = mapper.getBreedInsurance(breed);
	        model.addAttribute("petins", petins);
		}
		
		model.addAttribute("petinfo", pd);
               
        return "insurances";     
    }
	
	
	@ResponseBody
	@PostMapping
	public Map<String, Object> getBreedInsurance(String breed) {
		Map<String, Object> map = new HashMap<>();
		log.info("RequestBody: {}", breed);
		List<Map<String, Object>> li = service.getBreedInsurance(breed);

		map.put("li", li);
		log.info("HashMap: {}", map);
		return map;
	}
	
	
	@GetMapping("/{no}")  //보험 상세 페이지
	public String insuranceDetail(@PathVariable int no, Model model, HttpSession session) {
		//db에서 보험 리스트 가져오기		
		List<Map<String, Object>> detail = service.getInsuranceDetail(no);
		model.addAttribute("detail", detail);
		return "insurance_detail";
	}
		
}
