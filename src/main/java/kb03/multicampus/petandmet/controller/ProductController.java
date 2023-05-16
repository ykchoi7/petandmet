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

@Controller
@RequestMapping("/products")
public class ProductController {

    @GetMapping
    public String products() {
        return "products";
    }
    
    @ResponseBody
    @GetMapping("/feed")
    public Map<String, Object> getFeeds() {
    	Map<String, Object> map = new HashMap<>();
    	
    	List<ProductDto> list = new ArrayList<>();
    	list.add(new ProductDto(1, "사료1", 10000, "feed", null, true, true, true, true));
    	list.add(new ProductDto(2, "사료2", 20000, "feed", null, true, false, true, false));
    	list.add(new ProductDto(3, "사료3", 30000, "feed", null, false, true, false, false));
    	
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
    
    @ResponseBody
    @GetMapping("/snack")
    public Map<String, Object> getSnacks() {
    	Map<String, Object> map = new HashMap<>();
    	
    	List<ProductDto> list = new ArrayList<>();
    	list.add(new ProductDto(4, "간식1", 5000, "snack", null, true, true, true, true));
    	list.add(new ProductDto(5, "간식2", 7000, "snack", null, true, false, true, false));
    	list.add(new ProductDto(6, "간식3", 9000, "snack", null, false, true, false, true));
    	
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
    
    @ResponseBody
    @GetMapping("/toy")
    public Map<String, Object> getToys() {
    	Map<String, Object> map = new HashMap<>();
    	
    	List<ProductDto> list = new ArrayList<>();
    	list.add(new ProductDto(7, "장난감1", 30000, "toy", null, true, true, true, true));
    	list.add(new ProductDto(8, "장난감2", 40000, "toy", null, false, false, true, false));
    	list.add(new ProductDto(9, "장난감3", 50000, "toy", null, true, false, false, false));
    	
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
}
