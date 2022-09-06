package com.cybersoft.netruyen.service;

import com.cybersoft.netruyen.entity.Author;

public interface IAuthorService {
	void save(Author author);

	Author findById(int id);
}
