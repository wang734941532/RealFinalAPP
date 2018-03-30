package cn.app.service;

import java.util.List;

import cn.app.pojo.Category;

public interface CategoryService {

	List<Category> getCategoryList();

	//查询一级分类
	 List<Category> getSortOne();
	 //子带目录查询
	 List<Category> getSortTwo(int ParentId);
}
