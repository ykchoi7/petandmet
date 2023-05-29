package kb03.multicampus.petandmet.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.dto.BreedInsuranceDto;
import kb03.multicampus.petandmet.dto.PetDto;


@Mapper
public interface InsuranceMapper {
	
	@Select("select * from insurance order by no desc")
	List<InsuranceDto> findAll();

	@Select("select a.*, b.*\n"
			+ "from petandmet.insurance as a join petandmet.breed_insurance as b\n"
			+ "	on a.no = b.ino\n"
			+ " where breed = #{breed}"
			+ " order by patella desc, tooth desc, fee")
	List<Map<String, Object>> getBreedInsurance(@Param("breed") String breed);

	@Select("select a.*, b.*\n"
			+ "from petandmet.insurance as a join petandmet.breed_insurance as b\n"
			+ "	on a.no = b.ino\n"
			+ " where b.no = #{no}")
	List<Map<String, Object>> findByNo(@Param("no") int no);
	
}
