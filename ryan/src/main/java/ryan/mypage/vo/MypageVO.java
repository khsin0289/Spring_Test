package ryan.mypage.vo;
import java.io.Serializable;

@SuppressWarnings("serial")
public class MypageVO implements Serializable{
	private int no;
	private String id;
	private String password;
	private String name;
	
	public MypageVO() {}
	
	public MypageVO(int no, String id, String password, String name) {
		super();
		this.no = no;
		this.id = id;
		this.password = password;
		this.name = name;
	}
	
	@Override
	public String toString() {
		return "MypageVO [no=" + no + ", id=" + id + ", password=" + password + ", name=" + name + "]";
	}
	
	public int getNo() {
		return no;
	}
	
	public void setNo(int no) {
		this.no = no;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}