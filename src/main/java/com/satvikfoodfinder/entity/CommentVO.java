package com.satvikfoodfinder.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="comment_table")
public class CommentVO {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="commentId")
	private int commentId;
	
	@Column(name="comment")
	private String comment;
	
	@Column(name="vendorRating")
	private String vendorRating;
	
	@Column(name="status")
	private boolean status=true;
	
	@ManyToOne
	@JoinColumn(name = "vendor_id")
	private VendorVO vendorVO;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private UserVO userVO;
	


	public UserVO getUserVO() {
		return userVO;
	}

	public void setUserVO(UserVO userVO) {
		this.userVO = userVO;
	}

	public int getCommentId() {
		return commentId;
	}

	public void setCommentId(int commentId) {
		this.commentId = commentId;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getVendorRating() {
		return vendorRating;
	}

	public void setVendorRating(String vendorRating) {
		this.vendorRating = vendorRating;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public VendorVO getVendorVO() {
		return vendorVO;
	}

	public void setVendorVO(VendorVO vendorVO) {
		this.vendorVO = vendorVO;
	}

	@Override
	public String toString() {
		return "CommentVO [commentId=" + commentId + ", comment=" + comment + ", vendorRating=" + vendorRating
				+ ", status=" + status + ", vendorVO=" + vendorVO + "]";
	}

	public CommentVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
