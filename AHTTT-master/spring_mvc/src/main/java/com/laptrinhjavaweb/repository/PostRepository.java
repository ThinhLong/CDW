package com.laptrinhjavaweb.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.laptrinhjavaweb.entity.Post;

public interface PostRepository extends JpaRepository<Post, Long> {

}
