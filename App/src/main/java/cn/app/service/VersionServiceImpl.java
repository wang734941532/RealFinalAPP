package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.dao.VersionMapper;
import cn.app.pojo.Version;
@Service("versionService")
public class VersionServiceImpl implements VersionService {

	@Autowired
	private VersionMapper versionMapper;
	
	
	
	public void setVersionMapper(VersionMapper versionMapper) {
		this.versionMapper = versionMapper;
	}



	@Override
	public Version getVersionById(int id) {
		Version v = null;
		try{
			v = versionMapper.getVersionById(id);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		return v;
	}



	@Override
	public int deleteVersionByAppId(int appId) {
		return versionMapper.deleteVersionByAppId(appId);
	}



	@Override
	public List<Version> getVersionByAppId(int appId) {
		return versionMapper.getVersionByAppId(appId);
	}



	@Override
	public int insertSelective(Version record) {
		return versionMapper.insertSelective(record);
	}



	@Override
	public int updateByPrimaryKeySelective(Version record) {
		return versionMapper.updateByPrimaryKeySelective(record);
	}

}
