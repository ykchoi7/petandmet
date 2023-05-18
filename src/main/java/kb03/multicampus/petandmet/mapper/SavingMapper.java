package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.CardDto;
import kb03.multicampus.petandmet.dto.SavingsDto;

@Mapper
public interface SavingMapper {
	@Select("Select * FROM savings ORDER BY no DESC")
	List<SavingsDto> findAllsave();
	
}

