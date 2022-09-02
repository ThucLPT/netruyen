package com.cybersoft.netruyen.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.entity.Comic;
import com.cybersoft.netruyen.service.IComicService;
import com.cybersoft.netruyen.service.IFileService;

@RestController
@RequestMapping("comic")
public class ComicController {
	@Autowired
	private IComicService comicService;
	@Autowired
	private IFileService fileService;

	@PostMapping(value = "save", consumes = { MediaType.APPLICATION_JSON_VALUE, MediaType.MULTIPART_FORM_DATA_VALUE })
	public void save(@RequestPart String comic, @RequestPart MultipartFile file) {
		fileService.init();
		fileService.upload(file);
		Comic jsonComic = comicService.toJson(comic, file);
		comicService.save(jsonComic);
	}

	@GetMapping("")
	public List<Comic> findAll() {
		return comicService.findAll();
	}

	@GetMapping("{id}")
	public Comic findById(@PathVariable int id) {
		return comicService.findById(id);
	}
}
