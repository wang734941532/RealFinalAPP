package cn.app.service;

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

}
