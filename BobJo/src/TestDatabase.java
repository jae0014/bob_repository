import java.util.ArrayList;

import comment.model.service.CommentService;
import comment.model.vo.Comment;

public class TestDatabase {

	public static void main(String[] args) {
		ArrayList<Comment> list = new CommentService().selectAll("testPost",1);
		

	}

}
