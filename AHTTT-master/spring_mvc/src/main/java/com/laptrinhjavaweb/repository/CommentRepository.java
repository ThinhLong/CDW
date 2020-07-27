package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.Comment;

public interface CommentRepository extends JpaRepository<Comment, Long> {

}
