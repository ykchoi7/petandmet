package kb03.multicampus.petandmet.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kb03.multicampus.petandmet.dto.ProductDto;
import kb03.multicampus.petandmet.dto.ProductRecommendRequestDto;
import kb03.multicampus.petandmet.mapper.ProductMapper;
import lombok.RequiredArgsConstructor;

@Service
@Transactional(readOnly = true)
@RequiredArgsConstructor
public class ProductService {
	
	private final ProductMapper mapper;

	public List<ProductDto> getProducts(ProductRecommendRequestDto data) {
		int no = data.getPetNo();
		String category = data.getCategory();
		if (category.equals("사료"))
			return mapper.findFeeds(no, category);
		return mapper.findByPetNoAndCategory(no, category);
	}

	public ProductDto getProduct(int no) {
		return mapper.findByNo(no);
	}

}
