package com.cybersoft.netruyen.controller;

import org.springframework.beans.factory.annotation.Autowired;
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

	@PostMapping("save")
	public void save(@RequestBody Author author) {
		authorService.save(author);
	}
}
