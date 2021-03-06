﻿package com.service;

import java.util.List;


import com.domain.Classroom;


public interface ClassroomService {
	//강의실 출력
	public List<Classroom> list();
	
	
	//강의실 등록
	public int classroomInsert(Classroom cr);
	
	
	//강의실 삭제
	public int classroomDelete(Classroom cr);
	
	
	//강의시 수정
	public int classroomUpdate(Classroom cr);
	
	
}
