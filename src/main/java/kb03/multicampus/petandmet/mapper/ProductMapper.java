package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.ProductDto;

@Mapper
public interface ProductMapper {
	
	// 상품(간식, 장난감)을 동물타입(강아지, 고양이)기준으로 조회
	@Select("SELECT *\r\n"
			+ "FROM product\r\n"
			+ "WHERE pet_type = (SELECT pet_type FROM pet WHERE NO = #{no}) AND category = #{category}")
	List<ProductDto> findByPetNoAndCategory(@Param("no") int petNo, @Param("category") String category);
	
	// 사료를 동물타입(강아지, 고양이), 나이(현재날짜 - 생년월일)를 기준으로 조회
	@Select("SELECT *\r\n"
			+ "FROM product\r\n"
			+ "WHERE pet_type = (SELECT pet_type FROM pet WHERE NO = #{no})\r\n"
			+ "AND category = #{category}\r\n"
			+ "AND feed_type IN ((SELECT CASE\r\n"
			+ "WHEN tmp.pet_type LIKE '강아지' AND tmp.age < 1 THEN '퍼피'\r\n"
			+ "WHEN tmp.pet_type LIKE '고양이' AND tmp.age < 1 THEN '키튼'\r\n"
			+ "WHEN tmp.age >= 7 THEN '시니어'\r\n"
			+ "ELSE '어덜트'\r\n"
			+ "END AS feed_type\r\n"
			+ "FROM (SELECT *, FLOOR((to_days(CURDATE()) - to_days(birth)) / 365) age FROM pet WHERE NO = #{no}) tmp), '전연령')")
	List<ProductDto> findFeeds(@Param("no") int petNo, @Param("category") String category);

	@Select("SELECT * FROM product where NO = #{no}")
	ProductDto findByNo(@Param("no") int no);
}
