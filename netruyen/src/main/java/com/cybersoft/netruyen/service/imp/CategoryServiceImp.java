package com.cybersoft.netruyen.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybersoft.netruyen.entity.Category;
import com.cybersoft.netruyen.repository.CategoryRepository;
import com.cybersoft.netruyen.service.ICategoryService;

@Service
public class CategoryServiceImp implements ICategoryService {
	@Autowired
	private CategoryRepository categoryRepository;

	@Override
	public void save(Category category) {
		categoryRepository.save(category);
	}

	@Override
	public List<Category> findAll() {
		return categoryRepository.findAll();
	}

	@Override
	public Category findById(int id) {
		return categoryRepository.findById(id).get();
	}
}
