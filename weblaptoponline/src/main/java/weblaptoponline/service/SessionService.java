package weblaptoponline.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class SessionService {
	@Autowired
	HttpSession session;
	
	@SuppressWarnings("unchecked")
	public <T> T get(String name, T defaultValue) {
		T value = (T) session.getAttribute(name);
		return (value != null) ? value : defaultValue;
	}
	
	public void set(String name, Object value) {
		session.setAttribute(name, value);
	}
	
	public <T> T remove(String name) {
		T value = this.get(name, null);
		session.removeAttribute(name);
		return value;
	}
}