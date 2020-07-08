package guestbook.service;

import java.sql.Connection;
import java.sql.SQLException;

import guestbook.dao.MessageDao;
import guestbook.jdbc.ConnectionProvider;
import guestbook.model.Message;

public class WriteMessageService {
	
	private static final WriteMessageService instance = new WriteMessageService();
	private WriteMessageService() {}
	public static WriteMessageService getInstance() {
		return instance;
	}
	
	MessageDao dao = null;
	
	// WriteMessageService의 writeMessage는 0/1만을 반환한다.
	// 서비스에서 호출한 DAO의 insertMessage 기능 역시 0/1 만을 반환하는 구조이기 때문.
	public int writeMessage(Message message) {
		int result = 0;
		// Dao 초기화. 
		dao = MessageDao.getInstance();
		// dao의 메소드에 전달 할 DB Connection.
		try {
			// conn 타입에 ConnProvider가 가지고 있는 connPool(connection)을 제공해준다.
			Connection conn = ConnectionProvider.getConnection();
			// dao에 conn과 message 타입의 자료형(안에 들어가있는 자료를 함께)을 주고 0/1을 리턴받는다.
			result = dao.insertMessage(conn, message);
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 0, 1중 반환받은 값 하나를 리턴한다.
		return result;
	}
	
}
