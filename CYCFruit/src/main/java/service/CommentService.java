package service;

import java.util.List;

import domain.Comment;


public interface CommentService
{
	// ÃÌº”Õº È
	int addComment(Comment comment);

	List<Comment> getAllComments();
	
	void deleteComment(int id);
}
