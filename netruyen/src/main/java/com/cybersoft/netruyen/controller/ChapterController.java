package com.cybersoft.netruyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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

	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "save", consumes = { MediaType.APPLICATION_JSON_VALUE, MediaType.MULTIPART_FORM_DATA_VALUE })
	public void save(@RequestPart String chapter, @RequestPart MultipartFile file) {
		fileService.init();
		fileService.upload(file);
		Chapter jsonChapter = chapterService.toJson(chapter, file);
		chapterService.save(jsonChapter);
	}

	@GetMapping("{id}")
	public List<String> findById(@PathVariable int id) {
		return chapterService.findById(id);
	}
}
