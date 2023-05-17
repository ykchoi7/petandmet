package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class InsuranceDto {
	
	private int no, period, min_age, max_age, annual_limit, daily_limit;
	private double coverage_ratio;
	private String name, company, benefits;
	private Boolean patella, tooth, skin, scaling;
	
}
