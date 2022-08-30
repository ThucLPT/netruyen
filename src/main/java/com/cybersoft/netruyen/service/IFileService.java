package com.cybersoft.netruyen.service;

import org.springframework.web.multipart.MultipartFile;

public interface IFileService {
	void init();

	void upload(MultipartFile file);
}
