package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.ProductDto;

@Mapper
public interface ProductMapper {

	@Select("select * from product where category like #{category}")
	List<ProductDto> findByCategory(String category);
	
	@Select("SELECT * \r\n"
			+ "FROM (SELECT * FROM breed_product WHERE breed LIKE (SELECT breed FROM pet WHERE NO = #{no})) bp JOIN product p ON p.no = bp.pno\r\n"
			+ "WHERE p.category = #{category}")
	List<ProductDto> findByPnoAndCategory(@Param("no") int no, @Param("category") String category);
}
