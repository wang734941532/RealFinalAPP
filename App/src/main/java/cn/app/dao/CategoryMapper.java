package cn.app.dao;

import java.util.List;

import cn.app.pojo.Category;

public interface CategoryMapper {
    int deleteByPrimaryKey(Long id);

    int insert(Category record);

    int insertSelective(Category record);

    Category selectByPrimaryKey(Long id);

    int updateByPrimaryKeySelective(Category record);

    int updateByPrimaryKey(Category record);
    
    
    Category getCategoryById(int id );
    
    List<Category> getCategoryList();
    
    List<Category> getSortOne();
    
    List<Category> getSortTwo(int ParentId);
    
    
    
}