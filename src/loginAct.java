import data.dao.userImp;
import data.domain.BkUser;
import util.StringUtil;
import util.sessionUtil;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class loginAct extends HttpServlet {

    private static final long serialVersionUID = 7973583604436966644L;
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String act = request.getParameter("act");

        if (act.equals("login")) {
            String name = StringUtil.filterHtml(request.getParameter("name"));
            String password = StringUtil.filterHtml(request.getParameter("password"));
//            System.out.println("登陆的用户和密码为：" + name + "   "  + password);
            BkUser o =  userImp.check_login(name, password);
            if (o != null) {
                sessionUtil.addUser(request, o);
//               if(name.equals("admin")){
                  response.sendRedirect(request.getContextPath() + "/index.jsp");
//                }

            } else {
                response.sendRedirect(request.getContextPath() + "/index.jsp");
            }

           }

        if (act.equals("register")) {
            String register_name = StringUtil.filterHtml(request.getParameter("register_name"));
            String register_password = StringUtil.filterHtml(request.getParameter("register_password"));
            String repeat_password = StringUtil.filterHtml(request.getParameter("register_repeat_password"));

            if (register_password.equals(repeat_password)) {
                BkUser new_user = new BkUser(register_name,register_password);
                userImp.save(new_user);
            }
            else {
                System.out.println("密码错误！");
            }
        }


        if (act.equals("quit")) {
            sessionUtil.removeSession(request);
            response.sendRedirect(request.getContextPath() + "/index.jsp");
        }
    }
 }
