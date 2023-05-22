package kb03.multicampus.petandmet.controller;

import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.ProductDto;
import kb03.multicampus.petandmet.dto.ProductRecommendRequestDto;
import kb03.multicampus.petandmet.dto.UserDto;
import kb03.multicampus.petandmet.service.PetService;
import kb03.multicampus.petandmet.service.ProductService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

	@GetMapping // 상품 추천 페이지
	public String products(HttpSession session, Model model) {
		Object object = session.getAttribute("user"); // 세션에서 user라는 key로 attribute 검색
    	if (object == null) { // 비로그인 상태면 로그인 페이지로 리다이렉션
    		return "redirect:/login";
    	}
    	UserDto user = (UserDto) object; // UserDto 객체로 형변환
		List<PetDto> list = petService.findByUid(user.getNo()); // user pk로 pet 조회
		model.addAttribute("pets", list); // model에 추가
		return "products";
	}

	@ResponseBody
	@PostMapping(consumes = "application/json") // json 형태로 data 전달
	public Map<String, Object> getProducts(@RequestBody ProductRecommendRequestDto data) {
		Map<String, Object> map = new HashMap<>();
		log.info("RequestBody: {}", data);
		List<ProductDto> list = productService.getProducts(data); // Dto 정보를 통해 상품 조회

		map.put("list", list);
		log.info("HashMap: {}", map);
		return map;
	}
	
	@GetMapping("/{no}") // 상품 상세 페이지
	public String productDetailPage(@PathVariable int no, Model model, HttpSession session) {
		ProductDto dto = productService.getProduct(no);
		model.addAttribute("dto", dto);
		return "product_detail";
	}
}
