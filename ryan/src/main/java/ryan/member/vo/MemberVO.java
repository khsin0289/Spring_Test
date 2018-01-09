package ryan.member.vo;
import java.io.Serializable;
import java.sql.Date;

@SuppressWarnings("serial")
public class MemberVO implements Serializable{
	private String id;						// 아이디
	private String pwd;						// 비밀번호
	private String name;					// 이름
	private String birth;						// 생년월일
	private String email1;					// 이메일1
	private String email2;					// 이메일2
	private String tel;						// 전화번호
	private int zipcode;					// 우편번호
	private String address1;				// 주소1
	private String address2;				// 주소2
	private String image;		// 유저이미지 업로드
	private Date member_enrollDate; // 가입날짜
	
	public MemberVO(){}
	
	public MemberVO(String id, String pwd, String name, String birth, String email1, String email2, String tel,
			int zipcode, String address1, String address2, String image, Date member_enrollDate) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.birth = birth;
		this.email1 = email1;
		this.email2 = email2;
		this.tel = tel;
		this.zipcode = zipcode;
		this.address1 = address1;
		this.address2 = address2;
		this.image = image;
		this.member_enrollDate = member_enrollDate;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getPwd() {
		return pwd;
	}


	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getBirth() {
		return birth;
	}


	public void setBirth(String birth) {
		this.birth = birth;
	}


	public String getEmail1() {
		return email1;
	}


	public void setEmail1(String email1) {
		this.email1 = email1;
	}


	public String getEmail2() {
		return email2;
	}


	public void setEmail2(String email2) {
		this.email2 = email2;
	}


	public String getTel() {
		return tel;
	}


	public void setTel(String tel) {
		this.tel = tel;
	}


	public int getZipcode() {
		return zipcode;
	}


	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}


	public String getAddress1() {
		return address1;
	}


	public void setAddress1(String address1) {
		this.address1 = address1;
	}


	public String getAddress2() {
		return address2;
	}


	public void setAddress2(String address2) {
		this.address2 = address2;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public Date getMember_enrollDate() {
		return member_enrollDate;
	}


	public void setMember_enrollDate(Date member_enrollDate) {
		this.member_enrollDate = member_enrollDate;
	}


	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", pwd=" + pwd + ", name=" + name + ", birth=" + birth + ", email1=" + email1
				+ ", email2=" + email2 + ", tel=" + tel + ", zipcode=" + zipcode + ", address1=" + address1
				+ ", address2=" + address2 + ", image=" + image + ", member_enrollDate="
				+ member_enrollDate + "]";
	}
	


}
