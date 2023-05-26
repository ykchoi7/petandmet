package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.ReviewDto;

@Mapper
public interface ReviewMapper {
	
	// 상품에 관련된 리뷰들 조회
	@Select("SELECT * FROM review WHERE pno = #{pno}")
	List<ReviewDto> findByPno(@Param("pno") int pno);
}
