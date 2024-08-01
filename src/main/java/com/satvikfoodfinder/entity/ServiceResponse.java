package com.satvikfoodfinder.entity;

public class ServiceResponse<T> {

	private String status;
	private T data;
	public ServiceResponse(String status, T data) {
		super();
		this.status = status;
		this.data = data;
	}
	@Override
	public String toString() {
		return "ServiceResponse [status=" + status + ", data=" + data + "]";
	}
	public ServiceResponse() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public T getData() {
		return data;
	}
	public void setData(T data) {
		this.data = data;
	}
	
	
	
	
}
