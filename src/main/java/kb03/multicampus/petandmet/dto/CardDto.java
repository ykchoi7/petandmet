package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CardDto{
	private int no,annual_fee,hospital_discount,shopping_discount,acc_rate;
	private String image,name,company,benefits;
	private boolean insurance_reg, fund;
}
