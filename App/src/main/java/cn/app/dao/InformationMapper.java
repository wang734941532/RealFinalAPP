package cn.app.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.app.pojo.Information;

public interface InformationMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Information record);

    int insertSelective(Information record);

    Information selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Information record);

    int updateByPrimaryKey(Information record);
    
    public List<Information> getInfoByStatusId(@Param("statusId")int statusId,
    		@Param("pageCount")int pageCount,
    		@Param("pageSize")int pageSize);
    
    public Information getInfoById(int id);
    
    int getInfoCount();
    
    int updateStatus(@Param("value")int value,
    		@Param("id")int id);
    
    List<Information> getInfoList(@Param("pageCount")int pageCount,
    		@Param("pageSize")int pageSize);
    
    
    //查询按钮
    List<Information> queryInfo(@Param("softName")String softName,
    		@Param("sort1")int sort1,
    		@Param("sort2")int sort2,
    		@Param("sort3")int sort3);
    
    //上架操作：判断是否审核通过
    Information upOne(int id);
    //上架操作
   int upload(int id);
    
   //上架操作：判断是否以上架
   Information downOne(int id);
   //上架操作
  int download(int id);
  
  //删除
  int delete(int id);
  
  
  int updateAppByPK(Information information);
  
  
    
    
}