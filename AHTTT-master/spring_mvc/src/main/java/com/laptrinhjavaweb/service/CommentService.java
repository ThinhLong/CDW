package com.laptrinhjavaweb.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.laptrinhjavaweb.entity.Comment;
import com.laptrinhjavaweb.repository.CommentRepository;

@Service
public class CommentService {
	@Autowired
	private CommentRepository commentRP;

	public boolean saveComment(Comment comment) {
		return commentRP.save(comment) != null;
	}

	public List<Comment> findAll() {
		return commentRP.findAll();
	}

	public Comment findId(long id) {
		return commentRP.findOne(id);
	}
	
	public void delete(long id){
		commentRP.delete(id);
	}

}
