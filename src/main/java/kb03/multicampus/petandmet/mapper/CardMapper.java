package kb03.multicampus.petandmet.mapper;

import java.util.List;


import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.entity.Card;

@Mapper
public interface CardMapper {
	@Select("Select * FROM bbs ORDER BY no DESC")
	List<Card> findAll();
	

}
