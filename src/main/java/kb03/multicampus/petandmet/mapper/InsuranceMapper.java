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

	@Select("select p.name as petname, bi.*, i.*\n"
			+ "FROM breed_insurance bi\n"
			+ "JOIN pet p ON bi.breed = p.breed\n"
			+ "join insurance i on bi.ino = i.no\n"
			+ "where bi.breed=#{breed}\n"
			+ "order by\n"
			+ "case when p.patella = i.patella then 1\n"
			+ "		when p.patella <> i.patella then 0\n"
			+ "     when p.tooth = i.tooth then 1\n"
			+ "     when p.tooth <> i.tooth then 0\n"
			+ "     when p.skin = i.skin then 1\n"
			+ "     when p.skin <> i.skin then 0\n"
			+ "     when p.scaling = i.scaling then 1\n"
			+ "     when p.scaling = i.scaling then 0\n"
			+ "end desc;")
	List<Map<String, Object>> getBreedInsurance(@Param("breed") String breed);

	@Select("select a.*, b.*\n"
			+ "from petandmet.insurance as a join petandmet.breed_insurance as b\n"
			+ "	on a.no = b.ino\n"
			+ " where b.no = #{no}")
	List<Map<String, Object>> findByNo(@Param("no") int no);
	
}
