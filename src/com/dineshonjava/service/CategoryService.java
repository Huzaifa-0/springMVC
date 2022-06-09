package com.dineshonjava.service;

import java.util.List;

import com.dineshonjava.bean.CategoryBean;

public interface CategoryService {
	
	public void addCategory(CategoryBean categoryBean);
	
	public List<CategoryBean> getCategories();
	
	public CategoryBean getCategory(int categoryId);
	
	public void deleteCategory(int categoryId);

}
