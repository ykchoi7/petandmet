package kb03.multicampus.petandmet.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kb03.multicampus.petandmet.dto.ProductDto;
import kb03.multicampus.petandmet.dto.ProductRecommendRequestData;
import kb03.multicampus.petandmet.mapper.ProductMapper;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
@Slf4j
public class ProductService {
	
	private final ProductMapper mapper;
	
	public List<ProductDto> findByCategory(String category) {
		log.info("{} load success!", category);
		return mapper.findByCategory(category);
	}

	public List<ProductDto> getProducts(ProductRecommendRequestData data) {
		int no = data.getPetNo();
		String category = data.getCategory();
		return mapper.findByPetNoAndCategory(no, category);
	}

}
