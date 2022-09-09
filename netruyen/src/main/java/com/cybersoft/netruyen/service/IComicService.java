package com.cybersoft.netruyen.service;

import java.util.List;
import java.util.Map;

import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.entity.Comic;

public interface IComicService {
	void save(Comic comic);

	Comic toJson(String comic, MultipartFile file);

	List<Comic> findAll();

	Comic findById(int id);

	List<Map<String, ?>> searchComic(String keyword);
}
