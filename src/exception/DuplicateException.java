package exception;

public class DuplicateException extends Exception {

	public DuplicateException() {
		super("중복된 데이터입니다.");
		// TODO Auto-generated constructor stub
	}

	public DuplicateException(String message) {
		super(message + "중복된 데이터입니다.");
	}
	
}
