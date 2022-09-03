package com.cybersoft.netruyen.service.imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.entity.Chapter;
import com.cybersoft.netruyen.repository.ChapterRepository;
import com.cybersoft.netruyen.service.IChapterService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class ChapterServiceImp implements IChapterService {
	@Autowired
	private ChapterRepository chapterRepository;

	@Override
	public void save(Chapter chapter) {
		chapterRepository.save(chapter);
	}

	@Override
	public Chapter toJson(String chapter, MultipartFile file) {
		Chapter jsonChapter = null;
		ObjectMapper mapper = new ObjectMapper();
		try {
			jsonChapter = mapper.readValue(chapter, Chapter.class);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		jsonChapter.setSource(file.getOriginalFilename());
		return jsonChapter;
	}

	@Override
	public List<String> findById(int id) {
		List<String> list = null;
		Chapter chapter = chapterRepository.findById(id).get();
		try {
			list = Files.readAllLines(Paths.get("upload/" + chapter.getSource()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
