package dev.web.obelab.bean;

import java.util.Date;

import org.apache.ibatis.type.Alias;
@Alias("push")
public class PushBean {
	private Integer push_num;
	private Date push_time;
	private String push_content;
	private String push_del_status;
	private Integer push_ref_doc_num;
	
	public PushBean() {
		// TODO Auto-generated constructor stub
	}

	public Integer getPush_num() {
		return push_num;
	}

	public void setPush_num(Integer push_num) {
		this.push_num = push_num;
	}

	public Date getPush_time() {
		return push_time;
	}

	public void setPush_time(Date push_time) {
		this.push_time = push_time;
	}

	public String getPush_content() {
		return push_content;
	}

	public void setPush_content(String push_content) {
		this.push_content = push_content;
	}

	public String getPush_del_status() {
		return push_del_status;
	}

	public void setPush_del_status(String push_del_status) {
		this.push_del_status = push_del_status;
	}

	public Integer getPush_ref_doc_num() {
		return push_ref_doc_num;
	}

	public void setPush_ref_doc_num(Integer push_ref_doc_num) {
		this.push_ref_doc_num = push_ref_doc_num;
	}
	
}
