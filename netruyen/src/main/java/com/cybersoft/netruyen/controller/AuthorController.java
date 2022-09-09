package com.cybersoft.netruyen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.cybersoft.netruyen.entity.Author;
import com.cybersoft.netruyen.service.IAuthorService;

@RestController
@RequestMapping("author")
public class AuthorController {
	@Autowired
	private IAuthorService authorService;

	@PreAuthorize("isAuthenticated()")
	@PostMapping("save")
	public void save(@RequestBody Author author) {
		authorService.save(author);
	}

	@GetMapping("{id}")
	public Author findById(@PathVariable int id) {
		return authorService.findById(id);
	}
}
