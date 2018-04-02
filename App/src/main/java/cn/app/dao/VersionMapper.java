package cn.app.dao;

import java.util.List;

import cn.app.pojo.Version;

public interface VersionMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Version record);

    int insertSelective(Version record);

    Version selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Version record);

    int updateByPrimaryKey(Version record);
    
    //用于管理员界面审核展示版本号
    public Version getVersionById(int id);
    
    //关联删除appid
    public int deleteVersionByAppId(int appId);
    
    public List<Version> getVersionByAppId(int appId);
    
    
    
   
    
  
}