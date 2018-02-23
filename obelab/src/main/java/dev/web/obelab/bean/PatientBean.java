package dev.web.obelab.bean;

import java.util.Date;

import org.apache.ibatis.type.Alias;
@Alias("patient")
public class PatientBean {
	private Integer p_num;
	private String p_last_name;
	private String p_first_name;
	private Date p_birth;
	private String p_sex;
	private Float p_weight;
	private Float p_height;
	private String p_race;
	private Integer p_blood_pressure_min;
	private Integer p_blood_pressure_max;
	private Integer p_exercise;
	private Integer p_coffee;
	private Integer p_alcohol;
	private Integer p_smoking;
	private String p_prior_illness;
	private String p_others;
	private String p_memo;
	private Date p_reg_date;
	private String p_del_status;
	private Integer p_ref_doc_num;
	
	public PatientBean() {
		// TODO Auto-generated constructor stub
	}

	public Integer getP_num() {
		return p_num;
	}

	public void setP_num(Integer p_num) {
		this.p_num = p_num;
	}

	public String getP_last_name() {
		return p_last_name;
	}

	public void setP_last_name(String p_last_name) {
		this.p_last_name = p_last_name;
	}

	public String getP_first_name() {
		return p_first_name;
	}

	public void setP_first_name(String p_first_name) {
		this.p_first_name = p_first_name;
	}

	public Date getP_birth() {
		return p_birth;
	}

	public void setP_birth(Date p_birth) {
		this.p_birth = p_birth;
	}

	public String getP_sex() {
		return p_sex;
	}

	public void setP_sex(String p_sex) {
		this.p_sex = p_sex;
	}

	public Float getP_weight() {
		return p_weight;
	}

	public void setP_weight(Float p_weight) {
		this.p_weight = p_weight;
	}

	public Float getP_height() {
		return p_height;
	}

	public void setP_height(Float p_height) {
		this.p_height = p_height;
	}

	public String getP_race() {
		return p_race;
	}

	public void setP_race(String p_race) {
		this.p_race = p_race;
	}

	public Integer getP_blood_pressure_min() {
		return p_blood_pressure_min;
	}

	public void setP_blood_pressure_min(Integer p_blood_pressure_min) {
		this.p_blood_pressure_min = p_blood_pressure_min;
	}

	public Integer getP_blood_pressure_max() {
		return p_blood_pressure_max;
	}

	public void setP_blood_pressure_max(Integer p_blood_pressure_max) {
		this.p_blood_pressure_max = p_blood_pressure_max;
	}

	public Integer getP_exercise() {
		return p_exercise;
	}

	public void setP_exercise(Integer p_exercise) {
		this.p_exercise = p_exercise;
	}

	public Integer getP_coffee() {
		return p_coffee;
	}

	public void setP_coffee(Integer p_coffee) {
		this.p_coffee = p_coffee;
	}

	public Integer getP_alcohol() {
		return p_alcohol;
	}

	public void setP_alcohol(Integer p_alcohol) {
		this.p_alcohol = p_alcohol;
	}

	public Integer getP_smoking() {
		return p_smoking;
	}

	public void setP_smoking(Integer p_smoking) {
		this.p_smoking = p_smoking;
	}

	public String getP_prior_illness() {
		return p_prior_illness;
	}

	public void setP_prior_illness(String p_prior_illness) {
		this.p_prior_illness = p_prior_illness;
	}

	public String getP_others() {
		return p_others;
	}

	public void setP_others(String p_others) {
		this.p_others = p_others;
	}

	public String getP_memo() {
		return p_memo;
	}

	public void setP_memo(String p_memo) {
		this.p_memo = p_memo;
	}

	public Date getP_reg_date() {
		return p_reg_date;
	}

	public void setP_reg_date(Date p_reg_date) {
		this.p_reg_date = p_reg_date;
	}

	public String getP_del_status() {
		return p_del_status;
	}

	public void setP_del_status(String p_del_status) {
		this.p_del_status = p_del_status;
	}

	public Integer getP_ref_doc_num() {
		return p_ref_doc_num;
	}

	public void setP_ref_doc_num(Integer p_ref_doc_num) {
		this.p_ref_doc_num = p_ref_doc_num;
	}
	
}
