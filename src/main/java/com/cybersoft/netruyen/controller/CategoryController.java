package com.cybersoft.netruyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cybersoft.netruyen.entity.Category;
import com.cybersoft.netruyen.service.ICategoryService;

@RestController
@RequestMapping("category")
public class CategoryController {
	@Autowired
	private ICategoryService categoryService;

	@PreAuthorize("isAuthenticated()")
	@PostMapping("save")
	public void save(@RequestBody Category category) {
		categoryService.save(category);
	}

	@GetMapping("")
	public List<Category> findAll() {
		return categoryService.findAll();
	}

	@GetMapping("{id}")
	public Category findById(@PathVariable int id) {
		return categoryService.findById(id);
	}
}
