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
    	list.add(new ProductDto(1, "사료1", 10000));
    	list.add(new ProductDto(2, "사료2", 20000));
    	list.add(new ProductDto(3, "사료3", 30000));
    	
    	map.put("dto", new ProductDto(4, "사료4", 40000));
    	map.put("list", list);
    	System.out.println(map);
    	return map;
    }
}
