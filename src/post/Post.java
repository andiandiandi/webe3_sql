package post;

import java.io.Serializable;

public class Post implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1594633431107584594L;
	
	private int id;
	private String title;
	private String content;
	private String firstName;
	private String surname;
	private String date;
	
	public Post(String title,String content,String firstName,String surname) {
		this.title = title;
		this.content = content;
		this.firstName=firstName;
		this.surname=surname;
	}
	
	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public Post(int id,String title,String content,String firstName,String surname,String date) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
		this.firstName=firstName;
		this.surname=surname;
	}
	
	public int getID(){
		return id;
	}
	
	public void setTitle(String title) {
		this.title = title;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getTitle(){
		return title;
	}
	
	public String getContent(){
		return content;
	}
	
	public String getDate(){
		return date;
	}

	
	
}
