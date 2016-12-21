package service.impl;

import java.util.List;

import dao.CommentDao;
import domain.Comment;
import service.CommentService;

public class CommentServiceImpl implements CommentService{
	private CommentDao commentDao;
	
	public void setCommentDao(CommentDao commentDao) {
		this.commentDao = commentDao;
	}
	
	@Override
	public int addComment(Comment comment) {
		// TODO Auto-generated method stub
		return (Integer)commentDao.save(comment);
	}

	@Override
	public List<Comment> getAllComments() {
		// TODO Auto-generated method stub
		return commentDao.findAll(Comment.class);
	}

	@Override
	public void deleteComment(int id) {
		// TODO Auto-generated method stub
		commentDao.delete(Comment.class, id);
	}

	

}
