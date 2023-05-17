package kb03.multicampus.petandmet.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.dto.PetDto;


@Mapper
public interface InsuranceMapper {
	
	@Select("Select * from insurance order by no desc")
	List<InsuranceDto> findAll();
	
//	@Select("select * from insurance where breed = #{breed} order by ino desc"  )
//    List<InsuranceDto> findByBreed(@Param("breed") Object breed);
	
	@Select("select a.*, b.* from\n"
			+ "	petandmet.insurance as a, petandmet.breed_insurance as b\n"
			+ "    where a.#{no} = b.#{ino}\n"
			+ "    order by breed, fee;")
	List<InsuranceDto> findByBreed(@Param("breed") Object breed);

}
