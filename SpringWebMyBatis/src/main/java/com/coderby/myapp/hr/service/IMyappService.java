package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import com.coderby.myapp.hr.model.AssignVO;
import com.coderby.myapp.hr.model.EntVO;
import com.coderby.myapp.hr.model.LecVO;


public interface IMyappService {
	int getEntCount();				//기업 수	
	int getLecCount();				//수강 과목 수
	//getAssignCount(int lec_id);

	List<Map<String, Object>> getListLec();
	List<Map<String, Object>> getListLec(int lec_id);
	List<Map<String, Object>> getListEnt();
	List<Map<String, Object>> getListAssign(int lec_id);
	List<Map<String, Object>> getListAssign();
	
	AssignVO getAssignInfo(int lec_id);
	EntVO getEntInfo(int ent_id);
	LecVO getLecInfo(int lec_id);
	
	
	void updateEnt(EntVO ent);
	void updateLec(LecVO lec);		//과목 수정
	void updateAssign(AssignVO asign);

	void insertEnt(EntVO ent);			//기업 추가
	void insertLec(LecVO lec);			//과목 추가
	void insertAssign(AssignVO asign);	//과제 추가
		
	void deleteEnt(int ent_id); 	//기업 삭제
	void deleteLec(int lec_id);		//과목 삭제
	void deleteAssign(int lec_id, String asign_name);	//과제 삭제
	
}
