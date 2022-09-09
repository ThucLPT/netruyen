package com.cybersoft.netruyen.service.imp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybersoft.netruyen.entity.Author;
import com.cybersoft.netruyen.repository.AuthorRepository;
import com.cybersoft.netruyen.service.IAuthorService;

@Service
public class AuthorServiceImp implements IAuthorService {
	@Autowired
	private AuthorRepository authorRepository;

	@Override
	public void save(Author author) {
		authorRepository.save(author);
	}

	@Override
	public Author findById(int id) {
		return authorRepository.findById(id).get();
	}
}
