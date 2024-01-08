package com.beans;

public class ErrorMessage {
	
	private String content;
	private String error;
	private String cssClass;
	
	public ErrorMessage(String content,String error,String cssClass) {
		this.content = content;
		this.error = error;
		this.cssClass = cssClass;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getError() {
		return error;
	}

	public void setError(String error) {
		this.error = error;
	}

	public String getCssClass() {
		return cssClass;
	}

	public void setCssClass(String cssClass) {
		this.cssClass = cssClass;
	}
	
	
	
}
