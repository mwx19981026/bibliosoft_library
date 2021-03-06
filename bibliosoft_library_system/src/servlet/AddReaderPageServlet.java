package servlet;

import java.io.IOException;
import java.util.List;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ReaderDAO;
import entity.Reader;
import utils.DBHelper;

public class AddReaderPageServlet extends HttpServlet{
	private ReaderDAO readerDAO = ReaderDAO.getInstance();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("addReaderPage.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id=req.getParameter("reader_id");
		String name=req.getParameter("reader_name");
		String password=req.getParameter("password");
		String phone=req.getParameter("phone");
		String banzheng_date=req.getParameter("banzheng_date");
		String shengxiao_date=req.getParameter("shengxiao_date");
		String guoqi_date=req.getParameter("guoqi_date");
		String yj=req.getParameter("yj");
		String sxf=req.getParameter("sxf");
		String ljjs=req.getParameter("ljjs");
		String rule_id=req.getParameter("rule_id");
		int count=readerDAO.getTotal();
		count=count+1;
		String sql="insert into readerListTable values ('"+count+"','"+name+"','"+password+"','"+phone+"','"+shengxiao_date+"','"+banzheng_date+"','"+guoqi_date+"',"
				+ "'"+yj+"','"+sxf+"','"+ljjs+"','"+rule_id+"')";
	
		
		try {

			Connection c = DBHelper.getInstance().getConnection();
			PreparedStatement ps = c.prepareStatement(sql);
			ps.execute();
			DBHelper.closeConnection(c, ps, null);
		} catch (Exception e) {
			e.printStackTrace();
		}
		req.getRequestDispatcher("addReaderPage.jsp").forward(req, resp);
	}
	
	
}
