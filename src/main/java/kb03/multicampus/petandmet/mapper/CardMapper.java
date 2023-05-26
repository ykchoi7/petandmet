package kb03.multicampus.petandmet.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.web.bind.annotation.PathVariable;

import kb03.multicampus.petandmet.dto.CardDto;

@Mapper
public interface CardMapper {
	@Select("Select * FROM card ORDER BY no DESC")
	List<CardDto> findAll();
	
	@Select("select *\r\n" + 
			"from card\r\n" + 
			"order by annual_fee;")
	List<CardDto> orderbyannual();
	
	@Select("select *\r\n" + 
			"from card\r\n" + 
			"order by hospital_discount desc;")
	List <CardDto> orderbyhospital();
	
	@Select("select *\r\n" + 
			"from card\r\n" + 
			"order by shopping_discount desc;")
	List <CardDto> orderbyshopping();
	
	@Select("select *\r\n" + 
			"from card\r\n" + 
			"order by acc_rate desc;")
	List <CardDto> orderbyaccrate();
	
	@Select("select *\r\n" + 
			"from card\r\n" + 
			"where NO= #{no};")
	CardDto findByNo(@PathVariable("no") int no);
}
