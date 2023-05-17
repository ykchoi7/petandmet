package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.InsuranceDto;


@Mapper
public interface InsuranceMapper {
	
	@Select("Select * from insurance order by no desc")
	List<InsuranceDto> findAll();
	
}
