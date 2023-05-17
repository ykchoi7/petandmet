package kb03.multicampus.petandmet.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kb03.multicampus.petandmet.dto.ProductDto;
import kb03.multicampus.petandmet.service.ProductService;
import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/products")
@RequiredArgsConstructor
public class ProductController {

	private final ProductService productService;
	
    @GetMapping
    public String products() {
        return "products";
    }
    
    
    @ResponseBody
    @GetMapping("/feed")
    public Map<String, Object> getFeeds() {
    	Map<String, Object> map = new HashMap<>();
    	
    	List<ProductDto> list = productService.findByCategory("feed");
    	
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
    
    @ResponseBody
    @GetMapping("/snack")
    public Map<String, Object> getSnacks() {
    	Map<String, Object> map = new HashMap<>();
    	
    	List<ProductDto> list = productService.findByCategory("snack");
    	
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
    
    @ResponseBody
    @GetMapping("/toy")
    public Map<String, Object> getToys() {
    	Map<String, Object> map = new HashMap<>();
    	
    	List<ProductDto> list = productService.findByCategory("toy");
    	
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
}
