package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SavingsDto {
	private String image,name,bank,info_url;
	private double interest_rate,prime_rate;
	private int no,period, min_saving_amount, max_saving_amount;
	 
	
}
