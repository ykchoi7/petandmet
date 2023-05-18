package kb03.multicampus.petandmet;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ConfigurableApplicationContext;

import kb03.multicampus.petandmet.dto.InsuranceDto;
import kb03.multicampus.petandmet.mapper.InsuranceMapper;

@SpringBootApplication
public class InsuranceApplication {
	
	public static void main(String[] args) {
		ConfigurableApplicationContext context = SpringApplication.run(InsuranceApplication.class, args);
		context.getBean(InsuranceApplication.class).execute();
	}
	
	@Autowired
	private InsuranceMapper mapper;
	
	public void execute() {
//		insert();
		selectAll();
	}

//	private void insert() {
//		InsuranceDao dao = new InsuranceDao();
//		dao.setTitle("boot mybatis 테스트");
//		bbs.setWriter_id("user01");
//		bbs.setContent("boot mybatis 테스트중");
//		mapper.save(bbs);
//	}

	private void selectAll() {
		List<InsuranceDto> insli = mapper.findAll();
		System.out.println("***전체출력***");
		for (InsuranceDto dto : insli) {
			System.out.println("*** "+ dto);
		}
	}
	
	
}
