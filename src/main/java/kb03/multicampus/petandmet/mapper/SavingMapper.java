package kb03.multicampus.petandmet.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.PathVariable;

import kb03.multicampus.petandmet.dto.CardDto;
import kb03.multicampus.petandmet.dto.SavingsDto;

@Mapper
public interface SavingMapper {
	@Select("select *\r\n" + 
			"from savings\r\n" + 
			"order by (savings.interest_rate+savings.prime_rate) desc;")
	List<SavingsDto> findAllsave();
	
}


