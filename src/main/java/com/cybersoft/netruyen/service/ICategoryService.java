package com.cybersoft.netruyen.service;

import java.util.List;

import com.cybersoft.netruyen.entity.Category;

public interface ICategoryService {
	void save(Category category);

	List<Category> findAll();

	Category findById(int id);
}
