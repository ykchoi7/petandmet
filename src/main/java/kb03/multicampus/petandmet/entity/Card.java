package kb03.multicampus.petandmet.entity;

public class Card {
	private int no,annual_fee;
	private double hospital_dis,shopping_dis,acc_rate;
	private String name,company,benefits;
	private boolean insurance_reg, fund;
	
	public Card() {

	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public int getAnnual_fee() {
		return annual_fee;
	}

	public void setAnnual_fee(int annual_fee) {
		this.annual_fee = annual_fee;
	}

	public double getHospital_dis() {
		return hospital_dis;
	}

	public void setHospital_dis(double hospital_dis) {
		this.hospital_dis = hospital_dis;
	}

	public double getShopping_dis() {
		return shopping_dis;
	}

	public void setShopping_dis(double shopping_dis) {
		this.shopping_dis = shopping_dis;
	}

	public double getAcc_rate() {
		return acc_rate;
	}

	public void setAcc_rate(double acc_rate) {
		this.acc_rate = acc_rate;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getBenefits() {
		return benefits;
	}

	public void setBenefits(String benefits) {
		this.benefits = benefits;
	}

	public boolean isInsurance_reg() {
		return insurance_reg;
	}

	public void setInsurance_reg(boolean insurance_reg) {
		this.insurance_reg = insurance_reg;
	}

	public boolean isFund() {
		return fund;
	}

	public void setFund(boolean fund) {
		this.fund = fund;
	}

	@Override
	public String toString() {
		return "Card [no=" + no + ", annual_fee=" + annual_fee + ", hospital_dis=" + hospital_dis + ", shopping_dis="
				+ shopping_dis + ", acc_rate=" + acc_rate + ", name=" + name + ", company=" + company + ", benefits="
				+ benefits + ", insurance_reg=" + insurance_reg + ", fund=" + fund + "]";
	}
	
	
}
