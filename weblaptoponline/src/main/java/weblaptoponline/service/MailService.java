package weblaptoponline.service;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;


import weblaptoponline.entity.Account;

@Service
public class MailService {
	@Autowired
	JavaMailSender mailSender;

	public void send(String email, String subject, String text) {
		try {
			MimeMessage mail = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(mail, "utf-8");
			
			helper.setTo(email);
			helper.setSubject(subject);
			helper.setText(text, true);
			
			InternetAddress from = new InternetAddress("trungcaphe258@gmail.com", "ColoShop");
			helper.setFrom(from);
			helper.setReplyTo(from);
			
			mailSender.send(mail);
		} catch (Exception e) {
			e.printStackTrace();
			throw new RuntimeException("Unabled to send to " + email);
		}
	}
	
	public void sendWelcome(Account account) {
		String email = account.getEmail();
		String subject = "Welcome to COLOshop";
		 String text = "<h3 style=\"color:Tomato;\">Chào mừng "+ account.getUsername()  +  " đến với COLOSHOP</h3>"
	                +"Vui lòng chọn đường dẫn bên dưới đễ kích hoạt tài khoản :"
				 +"http://localhost:8080/account/activate/" + account.getUsername();
		 
		this.send(email, subject, text);
	}
	
	public void sendToken(Account account) {
		String email = account.getEmail();
		String subject = "Password Token";
		String text = "Mã Token của bạn là : " + Integer.toHexString(account.getPassword().hashCode());
		this.send(email, subject, text);
	}
	
	public void sendOrder(Account account, long orderId) {
		String email = account.getEmail();
		String subject = "Your Order";
		String text = "<h3 style=\"color:Tomato;\">Chào  "+ account.getUsername()  +  " ,</h3>"
				 +"Bạn vừa đặt thành công 1 đơn hàng, vui lòng vào đường link bên dưới để xem chi tiết đơn hàng :"
				+ "http://localhost:8080/order/detail/" + orderId;
		this.send(email, subject, text);
	}
}