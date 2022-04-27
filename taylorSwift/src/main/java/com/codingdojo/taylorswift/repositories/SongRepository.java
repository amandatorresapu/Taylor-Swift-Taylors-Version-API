package com.codingdojo.taylorswift.repositories;


import java.util.List;
import java.util.Optional;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.taylorswift.models.Song;

@Repository
public interface SongRepository extends CrudRepository<Song, Long> {
	
	List<Song>findAll();

	Optional<Song> findByCategory(String category);
	

}
