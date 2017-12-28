package ryan.member.vo;
import java.io.Serializable;

@SuppressWarnings("serial")
public class MemberVO implements Serializable{
	private String id;
	private String name;
	private String phone;
	
		
	public MemberVO() {}

	public MemberVO(String id, String name, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.phone = phone;
	}

	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + "phone=" + phone + "]";
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
