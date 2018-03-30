package cn.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.app.dao.CategoryMapper;
import cn.app.pojo.Category;
@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {
	
    @Autowired
	private CategoryMapper categoryMapper;
	
	@Override
	public List<Category> getCategoryList() {
		
		List<Category> catList = null;
		try {
			
			catList = categoryMapper.getCategoryList();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return catList;
	}

	@Override
	public List<Category> getSortOne() {
		
		return  categoryMapper.getSortOne();
	}

	@Override
	public List<Category> getSortTwo(int ParentId) {
		
		return categoryMapper.getSortTwo(ParentId);
	}

	
	
}
