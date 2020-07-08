package guestbook.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import guestbook.model.Message;

public class MessageDao {
	
	private static final MessageDao instance = new MessageDao();
	private MessageDao() {}
	public static MessageDao getInstance() {
		return instance;
	}
	
	// 예외처리는 Service단에서 처리하기 위해 throw한다.
	public int insertMessage(Connection conn, Message message) throws SQLException {
		int resultCnt = 0;
		PreparedStatement pstmt = null;
		
		try {
			// DB에 들어갈 쿼리.
			String sql ="INSERT INTO guestbook_message VALUES (message_id_seq.nextVal, ?, ?, ?)";
			// 인자를 입력받기 위해 대기한다.
			pstmt = conn.prepareStatement(sql);
			// ? 인자에 들어 갈 자료를 순차적으로 입력해준다. 
			pstmt.setString(1, message.getUname());
			pstmt.setString(2, message.getPw());
			pstmt.setString(3, message.getMessage());
			// 인자에 채울 값을 다 채웠으면 대기하던 쿼리를 DB에 전달하고 result를 0 or 1로 전달받는다.
			resultCnt = pstmt.executeUpdate();
			
		} finally {
			if (pstmt != null) {
				// 만약 비정상적으로 쿼리가 종료되었으면 
				// pstmt == null 상태이기 때문에 여긴 안온다.
				pstmt.close();
			}
		}
		// 정상적으로 글이 작성 될 경우 DB에선 1 Row가 업데이트 되기에 1이 반환된다.
		// 비정상적으로 작성되지 않고 종료가 될 경우 0 Row가 업데이트 되기 떄문에 0을 반환한다.
		return resultCnt;
	}
	
	
	
}
