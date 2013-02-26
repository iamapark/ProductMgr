package dto;

import java.io.Serializable;

public class Product implements Serializable {
	/** 상품코드 */
	private int pCode;
	/** 상품이름 */
	private String pName;
	/** 상품가격 */
	private int price;
	/** 재고량 */
	private int quantity;
	/** 상품셜명 */
	private String pDesc;
	
	public Product() {}

	public Product(int pCode, String pName, int price, int quantity,
			String pDesc) {
		this.pCode = pCode;
		this.pName = pName;
		this.price = price;
		this.quantity = quantity;
		this.pDesc = pDesc;
	}

	public int getpCode() {
		return pCode;
	}

	public void setpCode(int pCode) {
		this.pCode = pCode;
	}

	public String getpName() {
		return pName;
	}

	public void setpName(String pName) {
		this.pName = pName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getpDesc() {
		return pDesc;
	}

	public void setpDesc(String pDesc) {
		this.pDesc = pDesc;
	}

	@Override
	public String toString() {
		return "Product [pCode=" + pCode + ", pName=" + pName + ", price="
				+ price + ", quantity=" + quantity + ", pDesc=" + pDesc + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + pCode;
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Product other = (Product) obj;
		if (pCode != other.pCode)
			return false;
		return true;
	}


}
