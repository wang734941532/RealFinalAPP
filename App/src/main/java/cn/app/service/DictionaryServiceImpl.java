package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.dao.DictionaryMapper;
import cn.app.pojo.Dictionary;
@Service("dictionaryService")
public class DictionaryServiceImpl implements DictionaryService {
	@Autowired
  private DictionaryMapper dictionaryMapper;
	
	@Override
	public List<Dictionary> getDictionaryListByStatus() {
		List<Dictionary> dicList = null;
		try{
			dicList = dictionaryMapper.getDictionaryListByStatus();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		return dicList;
	}

	@Override
	public List<Dictionary> getAppStatus() {
		
		return dictionaryMapper.getAppStatus();
	}

	@Override
	public List<Dictionary> getAppFlatForm() {
		
		return dictionaryMapper.getAppFlatForm();
	}

}
