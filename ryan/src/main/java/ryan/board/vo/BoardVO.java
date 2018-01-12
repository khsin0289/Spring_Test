package ryan.board.vo;
import java.io.Serializable;
import java.util.Date;



@SuppressWarnings("serial")
public class BoardVO implements Serializable{
	private int seq;
	private String subject;
	private String contents;
	private Date board_enrolldate;
	
	public BoardVO(){}
	public BoardVO(int seq, String subject, String contents, Date board_enrolldate) {
		super();
		this.seq = seq;
		this.subject = subject;
		this.contents = contents;
		this.board_enrolldate = board_enrolldate;
	}
	
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", subject=" + subject + ", contents=" + contents + ", board_enrolldate=" + board_enrolldate + "]";
	}

	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
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
	public Date getBoard_enrolldate() {
		return board_enrolldate;
	}
	public void setBoard_enrolldate(Date board_enrolldate) {
		this.board_enrolldate = board_enrolldate;
	}
}
