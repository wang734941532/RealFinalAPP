package cn.app.service;

import java.util.List;

import cn.app.pojo.Dictionary;

public interface DictionaryService {
	
	 public List<Dictionary> getDictionaryListByStatus();
	 //用于ajax查询APP
	 public List<Dictionary> getAppStatus();
	 //用于ajax查询平台
	 public List<Dictionary> getAppFlatForm();

}
