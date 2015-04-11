package util;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

/**
 * Created by IntelliJ IDEA.
 * User: lyric
 * Date: 11-11-14
 * Time: 下午9:57
 * To change this template use File | Settings | File Templates.
 */
public class DataSourceTool {

    public static DataSource getds() {
		DataSource ds = null;
		try {
            Context initCtx = new InitialContext();
            Context ctx = (Context)initCtx.lookup("java:/comp/env");
            ds = (DataSource) ctx.lookup("orcl");
		} catch (NamingException e) {

			e.printStackTrace();
		}
		return ds;
	}

}
