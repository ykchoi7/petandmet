package kb03.multicampus.petandmet.dto;

public class InsuranceDto {
	
	private int no, coverage_ratio, period, min_age, max_age, annual_limit, daily_limit;
	private String name, company, benefits;
	private Boolean patella, tooth, skin, scaling;
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getCoverage_ratio() {
		return coverage_ratio;
	}
	public void setCoverage_ratio(int coverage_ratio) {
		this.coverage_ratio = coverage_ratio;
	}
	public int getPeriod() {
		return period;
	}
	public void setPeriod(int period) {
		this.period = period;
	}
	public int getMin_age() {
		return min_age;
	}
	public void setMin_age(int min_age) {
		this.min_age = min_age;
	}
	public int getMax_age() {
		return max_age;
	}
	public void setMax_age(int max_age) {
		this.max_age = max_age;
	}
	public int getAnnual_limit() {
		return annual_limit;
	}
	public void setAnnual_limit(int annual_limit) {
		this.annual_limit = annual_limit;
	}
	public int getDaily_limit() {
		return daily_limit;
	}
	public void setDaily_limit(int daily_limit) {
		this.daily_limit = daily_limit;
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
	public Boolean getPatella() {
		return patella;
	}
	public void setPatella(Boolean patella) {
		this.patella = patella;
	}
	public Boolean getTooth() {
		return tooth;
	}
	public void setTooth(Boolean tooth) {
		this.tooth = tooth;
	}
	public Boolean getSkin() {
		return skin;
	}
	public void setSkin(Boolean skin) {
		this.skin = skin;
	}
	public Boolean getScaling() {
		return scaling;
	}
	public void setScaling(Boolean scaling) {
		this.scaling = scaling;
	}
	
	
	@Override
	public String toString() {
		return "no=" + no + ", coverage_ratio=" + coverage_ratio + ", period=" + period + ", min_age="
				+ min_age + ", max_age=" + max_age + ", annual_limit=" + annual_limit + ", daily_limit=" + daily_limit
				+ ", name=" + name + ", company=" + company + ", benefits=" + benefits + ", patella=" + patella
				+ ", tooth=" + tooth + ", skin=" + skin + ", scaling=" + scaling;
	}
	
	
}
