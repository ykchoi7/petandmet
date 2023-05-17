package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class BreedInsuranceDto {
	
	private int no;
	private int ino;
	private String breed;
	private int fee;
	private String method;
	
}
