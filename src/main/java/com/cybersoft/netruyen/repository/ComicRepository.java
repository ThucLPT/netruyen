package com.cybersoft.netruyen.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cybersoft.netruyen.entity.Comic;

@Repository
public interface ComicRepository extends JpaRepository<Comic, Integer> {

}
