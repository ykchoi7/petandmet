package kb03.multicampus.petandmet.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ProductDto {

	private int no;
	private String name;
	private int price;
	private String category;
	private String image;
	private boolean patella;
	private boolean tooth;
	private boolean skin;
	private boolean scaling;
		
}
