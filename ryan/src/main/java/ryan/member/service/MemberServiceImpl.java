package ryan.member.service;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import ryan.member.dao.MemberDAO;
import ryan.member.vo.MemberVO;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.security.core.authority.SimpleGrantedAuthority;

import org.springframework.security.core.userdetails.User;

import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.security.core.userdetails.UserDetailsService;

import org.springframework.security.core.userdetails.UsernameNotFoundException;


@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	@Resource(name="MemberDAO")
	private MemberDAO memberDao;

	@Override
	public int getMemberListCount() {
		return memberDao.getMemberListCount();
	}

	@Override
	public List<MemberVO> getMemberList(int currentPage, int limit) {
		return memberDao.getMemberList(currentPage, limit);
	}
	
	// 회원가입
	@Override
	public int insertMember(MemberVO memberVO) {
		int result = memberDao.insertMember(memberVO);
		return result;
		
	}
	
	// 로그인
	@Override
	public MemberVO loginCheck(Map<String, String> requestMap) {
		return memberDao.loginCheck(requestMap);
	}
	
	// 아이디 중복체크
	@Override
	public MemberVO idCheck(HashMap<String, String> hmap) {
		return memberDao.idCheck(hmap);
	}

	// 아이디 찾기
	@Override
	public MemberVO idSearch(HashMap<String, String> hmap) {
		return memberDao.idSearch(hmap);
	}
/*
	@Override
	public int pwdSearch(HttpServletResponse response, MemberVO memberVO) {
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		// 아이디가 없으면
		if(manager.check_id(MemberVO.getId()) == 0) {
			out.print("아이디가 없습니다.");
			out.close();
		}else if(!memberVO.getEmail().equals(manager.login(memberVO.getId()).getEmail())) {
			out.print("잘못된 이메일 입니다.");
			out.close();
		}else {
			// 임시 비밀번호 생성
			String pw = "";
			for (int i = 0; i < 12; i++) {
				pw += (char) ((Math.random() * 26) + 97);
			}
			memberVO.setPwd(pwd);
			// 비밀번호 변경
			manager.update_pw(memberVO);
			// 비밀번호 변경 메일 발송
			send_mail(memberVO, "find_pw");
			
			out.print("이메일로 임시 비밀번호를 발송하였습니다.");
			out.close();
		}
		
		return memberDao.pwdSearch(response, memberVO);
		
	}
	@Override
	public void send_mail(MemberVO memberVO, String div) throws Exception {
		// Mail Server 설정
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "이메일 입력";
		String hostSMTPpwd = "비밀번호 입력";

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = "이메일 입력";
		String fromName = "Spring Homepage";
		String subject = "";
		String msg = "";
		
		if(div.equals("join")) {
			// 회원가입 메일 내용
			subject = "Spring Homepage 회원가입 인증 메일입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += memberVO.getId() + "님 회원가입을 환영합니다.</h3>";
			msg += "<div style='font-size: 130%'>";
			msg += "하단의 인증 버튼 클릭 시 정상적으로 회원가입이 완료됩니다.</div><br/>";
			msg += "<form method='post' action='http://localhost:8081/homepage/member/approval_member.do'>";
			msg += "<input type='hidden' name='email' value='" + memberVO.getEmail1() + "'>";
			msg += "<input type='hidden' name='approval_key' value='" + memberVO.getApproval_key() + "'>";
			msg += "<input type='submit' value='인증'></form><br/></div>";
		}else if(div.equals("find_pw")) {
			subject = "Spring Homepage 임시 비밀번호 입니다.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana'>";
			msg += "<h3 style='color: blue;'>";
			msg += memberVO.getId() + "님의 임시 비밀번호 입니다. 비밀번호를 변경하여 사용하세요.</h3>";
			msg += "<p>임시 비밀번호 : ";
			msg += memberVO.getPwd() + "</p></div>";
		}
		// 받는 사람 E-Mail 주소
		String mail = memberVO.getEmail1();
		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(587);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(msg);
			email.send();
		} catch (Exception e) {
			System.out.println("메일발송 실패 : " + e);
		}
	}*/



}
