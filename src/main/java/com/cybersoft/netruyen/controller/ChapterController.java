package com.cybersoft.netruyen.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.entity.Chapter;
import com.cybersoft.netruyen.service.IChapterService;
import com.cybersoft.netruyen.service.IFileService;

@RestController
@RequestMapping("chapter")
public class ChapterController {
	@Autowired
	private IChapterService chapterService;
	@Autowired
	private IFileService fileService;

	@PostMapping(value = "save", consumes = { MediaType.APPLICATION_JSON_VALUE, MediaType.MULTIPART_FORM_DATA_VALUE })
	public void save(@RequestPart String chapter, @RequestPart MultipartFile file) {
		fileService.init();
		fileService.upload(file);
		Chapter jsonChapter = chapterService.toJson(chapter, file);
		chapterService.save(jsonChapter);
	}
}
