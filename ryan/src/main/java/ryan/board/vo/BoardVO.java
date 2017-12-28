package ryan.board.vo;
import java.io.Serializable;

@SuppressWarnings("serial")
public class BoardVO implements Serializable{
	private int no;
	private String subject;
	private String contents;
	
	
	public BoardVO() {}

	public BoardVO(int no, String subject, String contents) {
		super();
		this.no = no;
		this.subject = subject;
		this.contents = contents;
	}

	@Override
	public String toString() {
		return "BoardVO [no=" + no + ", subject=" + subject + ", contents=" + contents + "]";
	}


	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getSubject() {
		return subject;
	}


	public void setSubject(String subject) {
		this.subject = subject;
	}


	public String getContents() {
		return contents;
	}


	public void setContents(String contents) {
		this.contents = contents;
	}

}
