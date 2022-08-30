package com.cybersoft.netruyen.service.imp;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.cybersoft.netruyen.service.IFileService;

@Service
public class FileServiceImp implements IFileService {
	private final Path path = Paths.get("upload");

	@Override
	public void init() {
		if (!Files.exists(path))
			try {
				Files.createDirectories(path);
			} catch (IOException e) {
				e.printStackTrace();
			}
	}

	@Override
	public void upload(MultipartFile file) {
		try {
			Files.copy(file.getInputStream(), this.path.resolve(file.getOriginalFilename()));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}
