package com.cybersoft.netruyen.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cybersoft.netruyen.entity.Chapter;

@Repository
public interface ChapterRepository extends JpaRepository<Chapter, Integer> {

}
