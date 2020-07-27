package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Comment {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private long id;
	private String content;
	private String time_comment;
	private long user_id;
	private String user_name;
	private long post_id;
	public Comment(String content, String time_comment, long user_id, String user_name, long post_id) {
		super();
		this.content = content;
		this.time_comment = time_comment;
		this.user_id = user_id;
		this.user_name = user_name;
		this.post_id = post_id;
	}
	
	public Comment() {
		super();
	}

	public Comment(String time_comment, long user_id, String user_name) {
		super();
		this.time_comment = time_comment;
		this.user_id = user_id;
		this.user_name = user_name;
	}

	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime_comment() {
		return time_comment;
	}
	public void setTime_comment(String time_comment) {
		this.time_comment = time_comment;
	}
	public long getUser_id() {
		return user_id;
	}
	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public long getPost_id() {
		return post_id;
	}
	public void setPost_id(long post_id) {
		this.post_id = post_id;
	}
	

}
