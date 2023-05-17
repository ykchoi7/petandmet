package kb03.multicampus.petandmet.controller;

import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.ProductDto;
import kb03.multicampus.petandmet.service.PetService;
import kb03.multicampus.petandmet.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping("/products")
@RequiredArgsConstructor
@Slf4j
public class ProductController {

	private final ProductService productService;
	private final PetService petService;

	@GetMapping
	public String products(HttpSession session, Model model) {
		// 2023-05-16 테스트 하는동안만 주석 처리 했음
//    	Object object = session.getAttribute("user");
//    	if (object == null) {
//    		return "redirect:/login";
//    	}
//    	UserDto user = (UserDto) object;
		PetDto pet = petService.findByNo(1);
		model.addAttribute("pet", pet);
		return "products";
	}

	@ResponseBody
	@GetMapping("/feed")
	public Map<String, Object> getFeeds() {
		Map<String, Object> map = new HashMap<>();

		List<ProductDto> list = productService.findByPnoAndCategory(4, "feed");

		map.put("list", list);
		System.out.println(map);
		return map;
	}

	@ResponseBody
	@GetMapping("/snack")
	public Map<String, Object> getSnacks() {
		Map<String, Object> map = new HashMap<>();

		List<ProductDto> list = productService.findByPnoAndCategory(4, "snack");

		map.put("list", list);
		System.out.println(map);
		return map;
	}

	@ResponseBody
	@GetMapping("/toy")
	public Map<String, Object> getToys() {
		Map<String, Object> map = new HashMap<>();

		List<ProductDto> list = productService.findByPnoAndCategory(4, "toy");

		map.put("list", list);
		System.out.println(map);
		return map;
	}
}
