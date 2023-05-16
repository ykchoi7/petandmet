package kb03.multicampus.petandmet.mapper;

import kb03.multicampus.petandmet.dto.UserDto;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;
@Mapper
public interface UserMapper {
    @Select("Select * FROM user where no = #{no}")
    UserDto findByNo(@Param("no") int no);
    @Select("Select * FROM user where id = #{id}")
    UserDto findById(String id);
}
