package util;


import data.domain.BkUser;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class sessionUtil {

	public static final String USER_NAME = "user";

	public static BkUser getUser(HttpServletRequest request) {
		BkUser user = (BkUser) request.getSession().getAttribute(USER_NAME);
		return user;
	}

	/**
	 * 添加一个Session到request中
	 * 
	 * @param request
	 */
	public static void addUser(HttpServletRequest request, BkUser user) {
		HttpSession session = request.getSession();
		session.setAttribute(USER_NAME, user);
	}

	/**
	 * 让session失效
	 * 
	 * @param request
	 */
	static public void removeSession(HttpServletRequest request) {
		HttpSession session = request.getSession();
		session.removeAttribute(USER_NAME);
		session.invalidate();
	}
}
