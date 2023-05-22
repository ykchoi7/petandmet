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
	
	// 품목(사료, 간식, 장난감)별로 품종(말티즈, 닥스훈트, 보더콜리, 러시안블루)별로 상품 조회
	@Select("SELECT p.* FROM product p JOIN (SELECT * FROM breed_product WHERE breed LIKE (SELECT breed FROM pet WHERE NO = #{no})) bp ON p.no = bp.pno\r\n"
			+ "WHERE p.category = #{category}")
	List<ProductDto> findByPetNoAndCategory(@Param("no") int petNo, @Param("category") String category);
	
	@Select("SELECT p.* FROM product p JOIN (SELECT * FROM breed_product WHERE breed LIKE (SELECT breed FROM pet WHERE NO = #{no})) bp ON p.no = bp.pno\r\n"
			+ "WHERE p.category = #{category}\r\n"
			+ "AND p.feed_type LIKE (SELECT case tmp.age when tmp.breed like '강아지' and tmp.age < 1 then 'puppy'\r\n"
			+ "when tmp.breed LIKE '고양이' AND tmp.age < 1 then 'kitten'\r\n"
			+ "when tmp.breed LIKE '강아지' and tmp.age > 7 then 'senior'\r\n"
			+ "ELSE 'adult'\r\n"
			+ "END AS feed_type\r\n"
			+ "FROM (SELECT *, FLOOR((to_days(CURDATE()) - to_days(birth)) / 365) age FROM pet WHERE NO = #{no}) tmp)")
	List<ProductDto> findFeeds(@Param("no") int petNo, @Param("category") String category);

	@Select("SELECT * FROM product where NO = #{no}")
	ProductDto findByNo(@Param("no") int no);
}
