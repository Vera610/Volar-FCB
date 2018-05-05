package com.model;

/**
 * Product entity.
 * 
 * @author MyEclipse Persistence Tools
 */

public class Product implements java.io.Serializable {

	// Fields

	private Integer id;
	private String proname;
	private String prono;
	private String img;
	private String price;
	private String field1;
	
	private String field7;
	private String field8;
	
	private String protype;

	private String delstatus;

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** full constructor */
	public Product(String proname, String prono, String img, String price,
			String field1,  String field7, String field8,
			 String protype, 
			String delstatus) {
		this.proname = proname;
		this.prono = prono;
		this.img = img;
		this.price = price;
		this.field1 = field1;
		
		this.field7 = field7;
		this.field8 = field8;
		
		this.protype = protype;
		
		this.delstatus = delstatus;
	}

	
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getProname() {
		return this.proname;
	}

	public void setProname(String proname) {
		this.proname = proname;
	}

	public String getProno() {
		return this.prono;
	}

	public void setProno(String prono) {
		this.prono = prono;
	}

	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getPrice() {
		return this.price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getField1() {
		return this.field1;
	}

	public void setField1(String field1) {
		this.field1 = field1;
	}

	
	public String getField7() {
		return this.field7;
	}

	public void setField7(String field7) {
		this.field7 = field7;
	}

	public String getField8() {
		return this.field8;
	}

	public void setField8(String field8) {
		this.field8 = field8;
	}

	

	public String getProtype() {
		return this.protype;
	}

	public void setProtype(String protype) {
		this.protype = protype;
	}

	

	public String getDelstatus() {
		return this.delstatus;
	}

	public void setDelstatus(String delstatus) {
		this.delstatus = delstatus;
	}

}