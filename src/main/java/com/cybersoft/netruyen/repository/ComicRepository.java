package com.cybersoft.netruyen.repository;

import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.cybersoft.netruyen.entity.Comic;

@Repository
public interface ComicRepository extends JpaRepository<Comic, Integer> {

	@Query(value="call get_comics_by_name(:name)", nativeQuery = true)
	List<Map<String, ?>> getComisByName(@Param("name") String name);
	
	@Query(value="call get_comics_by_author_name(:name)", nativeQuery = true)
	List<Map<String, ?>> getComicsByAuthorName(@Param("name") String name);
}
