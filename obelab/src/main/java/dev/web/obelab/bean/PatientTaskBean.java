package dev.web.obelab.bean;

import java.util.Date;

import org.apache.ibatis.type.Alias;
@Alias("patientTask")
public class PatientTaskBean {
	private Integer p_task_num;
	private Integer p_task_type;
	private String p_task_type_detail;
	private String p_task_opinion;
	private String p_task_analysis_file;
	private Date p_task_date;
	private String p_task_del_status;
	private Integer p_task_ref_p_num;
	
	public PatientTaskBean() {
		// TODO Auto-generated constructor stub
	}

	public Integer getP_task_num() {
		return p_task_num;
	}

	public void setP_task_num(Integer p_task_num) {
		this.p_task_num = p_task_num;
	}

	public Integer getP_task_type() {
		return p_task_type;
	}

	public void setP_task_type(Integer p_task_type) {
		this.p_task_type = p_task_type;
	}

	public String getP_task_type_detail() {
		return p_task_type_detail;
	}

	public void setP_task_type_detail(String p_task_type_detail) {
		this.p_task_type_detail = p_task_type_detail;
	}

	public String getP_task_opinion() {
		return p_task_opinion;
	}

	public void setP_task_opinion(String p_task_opinion) {
		this.p_task_opinion = p_task_opinion;
	}

	public String getP_task_analysis_file() {
		return p_task_analysis_file;
	}

	public void setP_task_analysis_file(String p_task_analysis_file) {
		this.p_task_analysis_file = p_task_analysis_file;
	}

	public Date getP_task_date() {
		return p_task_date;
	}

	public void setP_task_date(Date p_task_date) {
		this.p_task_date = p_task_date;
	}

	public String getP_task_del_status() {
		return p_task_del_status;
	}

	public void setP_task_del_status(String p_task_del_status) {
		this.p_task_del_status = p_task_del_status;
	}

	public Integer getP_task_ref_p_num() {
		return p_task_ref_p_num;
	}

	public void setP_task_ref_p_num(Integer p_task_ref_p_num) {
		this.p_task_ref_p_num = p_task_ref_p_num;
	}
	
}
