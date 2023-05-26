package kb03.multicampus.petandmet.mapper;

import kb03.multicampus.petandmet.dto.PetDto;
import kb03.multicampus.petandmet.dto.UserDto;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface PetMapper {
    @Select("Select * FROM pet where no = #{no}")
    PetDto findByNo(@Param("no") int no);

    @Select("select * from pet where uid = #{uid} order by uid desc")
    List<PetDto> findByUid(@Param("uid") int uid);

    @Insert("insert into pet values(null,#{uid},#{id},#{pet_type},#{name},#{birth},#{gender},#{weight}, #{isNeutered},#{pet_image},#{breed},#{patella},#{tooth},#{skin},#{scaling})")
    void insertPet
    (@Param("uid") int uid,@Param("id") int id,@Param("pet_type") String pet_type,@Param("name") String name,@Param("birth") String birth,@Param("weight") int weight,@Param("gender") String gender,@Param("isNeutered") boolean isNeutered,@Param("pet_image") String pet_image,@Param("breed") String breed,@Param("patella") boolean patella,@Param("tooth") boolean tooth,@Param("skin") boolean skin,@Param("scaling") boolean scaling);
}
