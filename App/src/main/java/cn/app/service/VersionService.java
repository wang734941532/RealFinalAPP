package cn.app.service;

import java.util.List;

import cn.app.pojo.Version;

public interface VersionService {

	public Version getVersionById(int id);
	
	
	  public int deleteVersionByAppId(int appId);
	  
	  public List<Version> getVersionByAppId(int appId);
	  
	  int insertSelective(Version record);
	  
	  int updateByPrimaryKeySelective(Version record);
}
