package cn.app.dao;

import java.util.List;

import cn.app.pojo.Dictionary;

public interface DictionaryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Dictionary record);

    int insertSelective(Dictionary record);

    Dictionary selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Dictionary record);

    int updateByPrimaryKey(Dictionary record);
    
    public List<Dictionary> getDictionaryListByStatus();
    
    public List<Dictionary> getAppStatus();
    
    public List<Dictionary> getAppFlatForm();
}