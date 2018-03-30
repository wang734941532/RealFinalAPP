package cn.app.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.app.pojo.Information;

public interface InfoService {

	public List<Information> getInfoByStatusId(int statusId,int pageCount,int pageSize);
	
	
	public Information getInfoById(int id);
	
	
	int getInfoCount();
	
	
	 int updateStatus(int value,int id);
	 
	 List<Information> getInfoList(int pageCount,int pageSize );
	 
	 List<Information> queryInfo(String softName,int sort1,int sort2,int sort3);
	 
} 
