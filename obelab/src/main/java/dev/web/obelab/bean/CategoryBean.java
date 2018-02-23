package dev.web.obelab.bean;

import org.apache.ibatis.type.Alias;

@Alias("category")
public class CategoryBean {
	
	private Integer ctg_num;
	private String ctg_type;
	private String ctg_type_detail;
	
	public CategoryBean() {
		// TODO Auto-generated constructor stub
	}
	
	public Integer getCtg_num() {
		return ctg_num;
	}
	public void setCtg_num(Integer ctg_num) {
		this.ctg_num = ctg_num;
	}
	public String getCtg_type() {
		return ctg_type;
	}
	public void setCtg_type(String ctg_type) {
		this.ctg_type = ctg_type;
	}
	public String getCtg_type_detail() {
		return ctg_type_detail;
	}
	public void setCtg_type_detail(String ctg_type_detail) {
		this.ctg_type_detail = ctg_type_detail;
	}
	
	
}
