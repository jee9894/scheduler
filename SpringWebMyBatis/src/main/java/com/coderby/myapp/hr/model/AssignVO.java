package com.coderby.myapp.hr.model;

import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;

public class AssignVO {

	@Autowired
	LecVO lec;
	private int seq_id;
	private int lec_id;
	private String asign_name = null;
	private Date asign_end= null;
	public int getLec_id() {
		return lec_id;
	}
	
	public int getSeq_id() {
		return seq_id;
	}

	public void setSeq_id(int seq_id) {
		this.seq_id = seq_id;
	}

	public void setLec_id(int lec_id) {
		this.lec_id = lec_id;
	}
	public String getAsign_name() {
		return asign_name;
	}
	public void setAsign_name(String asign_name) {
		this.asign_name = asign_name;
	}
	public Date getAsign_end() {
		return asign_end;
	}
	public void setAsign_end(Date asign_end) {
		this.asign_end = asign_end;
	}
	@Override
	public String toString() {
		return 
				"\n ���Ǹ�:" + lec.getLec_name()+
				"\n ���� �� ������: "+asign_name+
				"\n ���� �� ���� ������: "+asign_end;
	}
}
