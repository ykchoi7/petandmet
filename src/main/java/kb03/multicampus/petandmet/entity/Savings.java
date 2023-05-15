package kb03.multicampus.petandmet.entity;

public class Savings {
	private String name, bank;
	private double interest_rate,prime_rate;
	private int period, min_saving_amount, max_saving_amount;
	
	public Savings() {
		
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public double getInterest_rate() {
		return interest_rate;
	}

	public void setInterest_rate(double interest_rate) {
		this.interest_rate = interest_rate;
	}

	public double getPrime_rate() {
		return prime_rate;
	}

	public void setPrime_rate(double prime_rate) {
		this.prime_rate = prime_rate;
	}

	public int getPeriod() {
		return period;
	}

	public void setPeriod(int period) {
		this.period = period;
	}

	public int getMin_saving_amount() {
		return min_saving_amount;
	}

	public void setMin_saving_amount(int min_saving_amount) {
		this.min_saving_amount = min_saving_amount;
	}

	public int getMax_saving_amount() {
		return max_saving_amount;
	}

	public void setMax_saving_amount(int max_saving_amount) {
		this.max_saving_amount = max_saving_amount;
	}

	@Override
	public String toString() {
		return "Savings [name=" + name + ", bank=" + bank + ", interest_rate=" + interest_rate + ", prime_rate="
				+ prime_rate + ", period=" + period + ", min_saving_amount=" + min_saving_amount
				+ ", max_saving_amount=" + max_saving_amount + "]";
	}
	
	
}
