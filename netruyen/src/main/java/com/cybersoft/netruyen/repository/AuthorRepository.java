package com.cybersoft.netruyen.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.cybersoft.netruyen.entity.Author;

@Repository
public interface AuthorRepository extends JpaRepository<Author, Integer> {

}
