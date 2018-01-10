package ryan.board.vo;
import java.io.Serializable;

@SuppressWarnings("serial")
public class BoardVO implements Serializable{
	private int seq;
	private String subject;
	private String contents;
	
	public BoardVO(){}
	public BoardVO(int seq, String subject, String contents) {
		super();
		this.seq = seq;
		this.subject = subject;
		this.contents = contents;
	}
	
	@Override
	public String toString() {
		return "BoardVO [seq=" + seq + ", subject=" + subject + ", contents=" + contents + "]";
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
}
