package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import com.coderby.myapp.hr.model.AssignVO;
import com.coderby.myapp.hr.model.EntVO;
import com.coderby.myapp.hr.model.LecVO;
import com.coderby.myapp.hr.model.MemberVO;


public interface IMyappService {
	int getEntCount();				//��� ��	
	int getLecCount();				//���� ���� ��
	//getAssignCount(int lec_id);

	int getSeqNextVal();
	List<Map<String, Object>> getListLec(int seq_id);
	List<Map<String, Object>> getListEnt(int seq_id);
	List<Map<String, Object>> getListAssign(int seq_id);
	List<Map<String, Object>> getListMember(int seq_id);
	List<Map<String, Object>> getListMember(String mem_id, String mem_pw);
	List<Map<String, Object>> getListMember();
	
	AssignVO getAssignInfo(int lec_id);
	//AssignVO getAssignInfo(int lec_id, String asign_name);
	AssignVO getAssignInfo(int lec_id, String asign_name,int seq_id);
	EntVO getEntInfo(int ent_id, int seq_id);
	LecVO getLecInfo(int lec_id, int seq_id);
	MemberVO getMemberInfo(int seq_id); //ȸ�� ���� ����
	MemberVO getMemberInfo(String mem_id, String mem_pw);
	MemberVO getMemberInfo(String mem_pw); //ȸ�� ���� ����


	int getSeqFromEnt(int ent_id);
	int getSeqFromLec(int lec_id);
	
	void updateEnt(EntVO ent);
	void updateLec(LecVO lec);		//���� ����
	void updateAssign(AssignVO asign);
	void updateMember(MemberVO mem);

	void insertEnt(EntVO ent);			//��� �߰�
	void insertLec(LecVO lec);			//���� �߰�
	void insertAssign(AssignVO asign);	//���� �߰�
	void insertMember(MemberVO mem);  
		
	void deleteEnt(int ent_id, int seq_id); 	//��� ����
	void deleteLec(int lec_id, int seq_id);		//���� ����
	void deleteAssign(int lec_id, String asign_name, int seq_id);	//���� ����
	void deleteMember(String mem_id, String mem_pw);	//ȸ�� Ż��	
	void deleteMember(int seq_id);
	}
	
	

