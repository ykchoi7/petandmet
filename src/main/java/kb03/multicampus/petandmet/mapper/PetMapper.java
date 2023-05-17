package kb03.multicampus.petandmet.mapper;

import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.UserDto;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PetMapper {
    @Select("Select * FROM pet where no = #{no}")
    PetDto findByNo(@Param("no") int no);

    @Select("select * from pet where uid = #{uid} order by uid desc"  )
    List<PetDto> findByUid(@Param("uid") int uid);

}
