package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Type;
import org.springframework.web.multipart.MultipartFile;

@Entity
public class Post {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private String title;
	@Type(type="text")
	private String content;
	private String time_post;
	private long user_id;
	private String username;
	private long category_id;
	private String img;

	public Post(String title, String content, String time_post, long user_id, String username, long category_id,
			String img) {
		super();
		this.title = title;
		this.content = content;
		this.time_post = time_post;
		this.user_id = user_id;
		this.username = username;
		this.category_id = category_id;
		this.img = img;
	}

	
	public Post(String time_post, long user_id, String username) {
		super();
		this.time_post = time_post;
		this.user_id = user_id;
		this.username = username;
	}

	public Post(String time_post) {
		super();
		this.time_post = time_post;
	}

	public Post() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTime_post() {
		return time_post;
	}

	public void setTime_post(String time_post) {
		this.time_post = time_post;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public long getCategory_id() {
		return category_id;
	}

	public void setCategory_id(long category_id) {
		this.category_id = category_id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}
