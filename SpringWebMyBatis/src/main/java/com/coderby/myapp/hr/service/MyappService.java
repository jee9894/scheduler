package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coderby.myapp.hr.dao.IMyappRepository;
import com.coderby.myapp.hr.model.AssignVO;
import com.coderby.myapp.hr.model.EntVO;
import com.coderby.myapp.hr.model.LecVO;


@Service
public class MyappService implements IMyappService {

	@Autowired
	IMyappRepository myappRepository;
	@Override
	public int getEntCount() {
		return myappRepository.getEntCount();
	}

	@Override
	public int getLecCount() {
		return myappRepository.getLecCount();
	}


	@Override
	public List<Map<String, Object>> getListLec() {
		return myappRepository.getListLec();
	}

	@Override
	public void updateEnt(EntVO ent) {
		myappRepository.updateEnt(ent);
	}

	@Override
	public void updateLec(LecVO lec) {
		myappRepository.updateLec(lec);
	}

	@Override
	public void updateAssign(AssignVO assign) {
		myappRepository.updateAssign(assign);
	}

	

	@Override
	public void deleteEnt(int ent_id) {
		myappRepository.deleteEnt(ent_id);
	}

	@Override
	public void deleteLec(int lec_id) {
		myappRepository.deleteLec(lec_id);
	}

	@Override
	public void insertEnt(EntVO ent) {
		myappRepository.insertEnt(ent);
		
	}

	@Override
	public void insertLec(LecVO lec) {
		myappRepository.insertLec(lec);
		
	}

	@Override
	public void insertAssign(AssignVO asign) {
		myappRepository.insertAssign(asign);
		
	}

	@Override
	public void deleteAssign(int lec_id, String asign_name) {
		myappRepository.deleteAssign(lec_id, asign_name);
		
	}

	@Override
	public List<Map<String, Object>> getListEnt() {
		return myappRepository.getListEnt();
	}

	@Override
	public List<Map<String, Object>> getListAssign(int lec_id) {
		return myappRepository.getListAssign(lec_id);
	}

	@Override
	public List<Map<String, Object>> getListLec(int lec_id) {
		return myappRepository.getListLec(lec_id);
	}

	@Override
	public List<Map<String, Object>> getListAssign() {
		return myappRepository.getListAssign();
	}

	@Override
	public AssignVO getAssignInfo(int lec_id) {
		return myappRepository.getAssignInfo(lec_id);
	}

	@Override
	public EntVO getEntInfo(int ent_id) {
		return myappRepository.getEntInfo(ent_id);
	}

	@Override
	public LecVO getLecInfo(int lec_id) {
		return myappRepository.getLecInfo(lec_id);
	}

	@Override
	public AssignVO getAssignInfo(int lec_id, String asign_name) {
		return myappRepository.getAssignInfo(lec_id, asign_name);
	}



}
