package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.laptrinhjavaweb.entity.Post;
import com.laptrinhjavaweb.repository.PostRepository;

@Service
public class PostService {
	
	@Autowired
	private PostRepository PostRP;

	public boolean savePost(Post post) {
		return PostRP.save(post) != null;
	}

	public List<Post> findAll() {
		return PostRP.findAll();
	}

	public Post findId(long id) {
		return PostRP.findOne(id);
	}
	public void delete(long id){
		PostRP.delete(id);
	}

}
