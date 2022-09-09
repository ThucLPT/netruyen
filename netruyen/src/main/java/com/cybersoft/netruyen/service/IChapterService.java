package com.cybersoft.netruyen.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.entity.Chapter;

public interface IChapterService {
	void save(Chapter chapter);

	Chapter toJson(String chapter, MultipartFile file);

	List<String> findById(int id);
}
