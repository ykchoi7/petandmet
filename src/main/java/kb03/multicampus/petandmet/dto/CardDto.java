package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CardDto {
	private int no,annual_fee,hospital_dis,shopping_dis,acc_rate;
	private String name,company,benefits;
	private boolean insurance_reg, fund;
}
