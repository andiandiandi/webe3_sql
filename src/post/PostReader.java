package post;

import java.util.List;

import database.DatabaseConnector;
import database.MysqlDB;

public class PostReader {

	private MysqlDB db;
	
	public PostReader() {
		 db = DatabaseConnector.getInstance();
	}

	public List<Post> getPosts(){
		return db.getPosts();
	}
	
}
