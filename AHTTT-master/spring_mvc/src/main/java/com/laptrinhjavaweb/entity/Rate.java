package com.laptrinhjavaweb.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Rate {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private long id;
	private int quantity;
	private long user_id;
	private long post_id;
	private String time_rate;

	public Rate(int quantity, long user_id, long post_id, String time_rate) {
		super();
		this.quantity = quantity;
		this.user_id = user_id;
		this.post_id = post_id;
		this.time_rate = time_rate;
	}

	public Rate(String time_rate) {
		super();
		this.time_rate = time_rate;
	}

	public Rate(long user_id, long post_id, String time_rate) {
		super();
		this.user_id = user_id;
		this.post_id = post_id;
		this.time_rate = time_rate;
	}

	public Rate() {
		super();
	}

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public long getUser_id() {
		return user_id;
	}

	public void setUser_id(long user_id) {
		this.user_id = user_id;
	}

	public long getPost_id() {
		return post_id;
	}

	public void setPost_id(long post_id) {
		this.post_id = post_id;
	}

	public String getTime_rate() {
		return time_rate;
	}

	public void setTime_rate(String time_rate) {
		this.time_rate = time_rate;
	}

}
