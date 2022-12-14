package com.cybersoft.netruyen.service.imp;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.entity.Comic;
import com.cybersoft.netruyen.repository.ComicRepository;
import com.cybersoft.netruyen.service.IComicService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ComicServiceImp implements IComicService {
	@Autowired
	private ComicRepository comicRepository;

	@Override
	public void save(Comic comic) {
		comicRepository.save(comic);
	}

	@Override
	public Comic toJson(String comic, MultipartFile file) {
		Comic jsonComic = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			jsonComic = mapper.readValue(comic, Comic.class);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		jsonComic.setThumbnail(file.getOriginalFilename());
		return jsonComic;
	}

	@Override
	public List<Comic> findAll() {
		return comicRepository.findAll();
	}

	@Override
	public Comic findById(int id) {
		return comicRepository.findById(id).get();
	}

	@Override
	public List<Map<String, ?>> searchComic(String keyword) {
		return comicRepository.searchComic(keyword);
	}
}
