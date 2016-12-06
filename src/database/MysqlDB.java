package database;

import java.util.List;

import post.Post;

public interface MysqlDB {
	void add(Post p);
	void delete(Post p);
	List<Post> getPosts();
	void close();
}
