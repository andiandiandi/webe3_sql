package post;

import database.DatabaseConnector;

public class PostWriter {

	
	private  DatabaseConnector db;

	public PostWriter() {
		db = DatabaseConnector.getInstance();
		
	}

	public void writePost(Post p) {
		db.add(p);
	}
	
	public void deletePost(Post p){
		db.delete(p);
	}

}
