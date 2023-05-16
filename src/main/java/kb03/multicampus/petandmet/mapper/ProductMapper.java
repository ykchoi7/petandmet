package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.ProductDto;

@Mapper
public interface ProductMapper {

	@Select("select * from product where category like #{category}")
	List<ProductDto> findByCategory(String category);
}
