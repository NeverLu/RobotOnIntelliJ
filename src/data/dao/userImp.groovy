package data.dao

import groovy.sql.Sql
import data.domain.BkUser
import util.DataSourceTool

/**
 * Created by IntelliJ IDEA.
 * User: Administrator
 * Date: 13-7-26
 * Time: 上午9:55
 * To change this template use File | Settings | File Templates.
 */
class userImp {
    def static getsql() {
        def sql = Sql.newInstance(DataSourceTool.getds())
        //def sql = Sql.newInstance("jdbc:oracl:thin:@121.248.200.25:1521:orcl", "slpc_2", "123456", "oracle.jdbc.OracleDriver")
        return sql
    }
    //登录检查
    public static BkUser check_login(String name,String password)
    {
        Sql sql = getsql()
        def rs
        BkUser user = new BkUser()
        String str = "select * from robot_user where user_name='"+name+"' and user_password='"+password+"'"
        try{
            rs=sql.firstRow(str)
            if(rs != null)
            {
                user.setUname(rs.get("user_name").toString())
                user.setUpwd(rs.get("user_password").toString())
//                user.setRole(rs.get("role").toString())
//                user.setRolenm(rs.get("rolenm").toString())
                return user
            }
            else
                return null
           
        }
        catch (Exception e)
        {
            e.printStackTrace();
           
        }
        finally{
            sql.close()
        }
        
    }
    //获取页数
    public static int countBkUer(String ucode)
    {
        Sql sql=getsql()
        def result = new String()
        try
        {
            if(ucode == "admin")
            {
                def rs=sql.firstRow("select count(*) as total from bk_user")
                result = rs.get("total").toString();
                return result.toInteger()
            }
            else
               return 1;

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally{
            sql.close()
        }

    }
    /*
    //按页获取用户
    public static List<BkUser> getByPage(PageBean page,String ucode)
    {
        Sql sql=getsql()
        BkUser user
        List<BkUser> items = new ArrayList<BkUser>()
        def pagesize = page.getPageSize()
        def pageindex = page.getCurrentPage()
        def first =  pagesize * (pageindex - 1)
        String pagestr,corestr
        if(ucode == "admin")
            corestr = 'select * from bk_user'
        else
            corestr = "select * from bk_user where ucode ='"+ucode+"'"
        pagestr = "select * from(select A.*,ROWNUM RN from ("+corestr+") A where ROWNUM <="+pagesize*pageindex+") where RN>"+first
        try
        {
            sql.eachRow(pagestr)
                    {
                        row->
                        user = new BkUser()
                        user.setUcode(row.ucode)
                        user.setUname(row.uname)
                        user.setUpwd(row.upwd)
//                        user.setRole(row.role)
//                        user.setRolenm(row.rolenm)
                        items.add(user)
                    }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally{
            sql.close()
        }
        return items
    }*/
    //删除单个用户
    public static void delete(String id)
    {
        Sql sql=getsql()
        String str
        str  = "delete from bk_user where ucode = '"+id+"'"
        try
        {
           sql.execute(str)
        }
        catch (Exception e)
        {
            e.printStackTrace();

        }
        finally
        {
            sql.close()
        }
     }
    //批量删除用户
    public  static void deleteall(String[] ids)
    {
        Sql sql=getsql()
        String str
        try
        {
            for(int i=0;i<ids.length;i++)
            {
                str  = "delete from bk_user where ucode = '"
                str += ids[i]+"'";
                sql.execute(str)
            }

        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally
        {
            sql.close()
        }
     }
    //按照id获取单个用户
    public static BkUser getById(String ucode)
    {
        Sql sql=getsql()
        BkUser user
        String str = "select * from bk_user where ucode = '"+ucode+"'"
        def rs
        try
        {
            rs=sql.firstRow(str)
            if(rs != null)
            {
                user = new BkUser()
                user.setUcode(rs.get("ucode").toString())
                user.setUname(rs.get("uname").toString())
                user.setUpwd(rs.get("upwd").toString())
//                user.setRole(rs.get("role").toString())
//                user.setRolenm(rs.get("rolenm").toString())
                return user;
            }
            return null
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally{
            sql.close()
        }
     }
     //修改用户信息
    public static void update(BkUser bk)
    {
        Sql sql = getsql()
        String update
        def rs
//        update = "update bk_user"+" set uname='"+bk.getUname()+"',upwd='"+bk.getUpwd()+"',role='"+bk.getRole()+"',rolenm='"+bk.getRolenm()+"'" +"where ucode='"+bk.getUcode()+"'"
        update = "update bk_user"+" set uname='"+bk.getUname()+"',upwd='"+bk.getUpwd()+"'where ucode='"+bk.getUcode()+"'"
        try{
              sql.execute(update)
            }
        catch (Exception e)
        {
            e.printStackTrace();
         }
        finally{
            sql.close()
        }
    }
    //增加用户，帐号即为初始密码
    //修改用户信息
    public static void save(BkUser bk)
    {
        Sql sql = getsql()
        String save
        def rs
//        save = "insert into bk_user(ucode,uname,upwd,role,rolenm) values('"+bk.getUpwd()+"','"+bk.getUname()+"','"+bk.getUpwd()+"','"+bk.getRole()+"','"+bk.getRolenm()+"')"
        save = "insert into bk_user(ucode,uname,upwd) values('"+bk.getUpwd()+"','"+bk.getUname()+"','"+bk.getUpwd()+"')"
        try{
            sql.execute(save)
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        finally{
            sql.close()
        }
    }
//    //增加立方体
//    public static  boolean  createCube(String sydl,String ejfl,String name,String content,String url)
//    {
//        Sql sql = getsql()
//        String themeinfo,themeinfo1,getparent,getid
//        String parent,id
//        def rs
//        getid = "select max(id) as total from theme_info"
//        getparent = "select id from theme_info where parent = (select id from theme_info where name = '"+sydl+"') and name = '"+ejfl+"'"
//
//        try{
//            rs=sql.firstRow(getid)
//            id = (Integer.parseInt(rs.get("total").toString())+1).toString()
//            rs=sql.firstRow(getparent)
//            parent = rs.get("id").toString()
//
//            themeinfo = "insert into theme_info (id,name,parent) values ('"+id+"','"+name+"','"+parent+"')"
//            themeinfo1 = "insert into theme_info2 (id,url,content,catalogue) values ('"+id+"','"+url+"','"+content+"','"+"/"+sydl+"/"+ejfl+"')"
////            println themeinfo
////            println themeinfo1
//            sql.execute(themeinfo)
//            sql.execute(themeinfo1)
//        }
//        catch (Exception e)
//        {
////            e.printStackTrace();
//            return false
//        }
//        finally{
//            sql.close()
//        }
//
//        return true
//
//    }
//    //增加二级目录
//    public static  int  createCatalogue(String sydl,String name)
//    {
//        Sql sql = getsql()
//        String themeinfo,getparent,getid,exist
//        String parent,id
//        def rs
//        getparent = "select id from theme_info where  name = '"+sydl+"'"
//        exist = "select * from theme_info where name = '"+name+"' and parent=("+getparent+")"
//        getid = "select max(id) as total from theme_info"
//
//
//        try{
//                rs=sql.firstRow(exist)
//                if(rs == null)
//                {
//                    rs=sql.firstRow(getid)
//                    id = (Integer.parseInt(rs.get("total").toString())+1).toString()
//                    rs=sql.firstRow(getparent)
//                    parent = rs.get("id").toString()
//
//                    themeinfo = "insert into theme_info (id,name,parent) values ('"+id+"','"+name+"','"+parent+"')"
//                    //            println themeinfo
//                     sql.execute(themeinfo)
//                     return 1
//                 }
//
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
////            return false
//        }
//        finally{
//            sql.close()
//        }
//        return 0
//     }
//
//    //取得所有6大类
//    public static List<String>  getSydl()
//    {
//        Sql sql=getsql()
//        List<String> list = new ArrayList<String>()
//        String str
//        str = "select name from theme_info where parent = '0'"
//        try{
//            sql.eachRow(str)
//                    {
//                        row->
//                        list.add(row.name)
//                    }
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        finally{
//            sql.close()
//        }
//        return list
//    }
//    // 级联
//    public static List<String> Cascade(String sydl)
//    {
//        Sql sql=getsql()
//        List<String> list = new ArrayList<String>()
//        String str,strgetid,id
//        strgetid = "select id from theme_info where name = '"+sydl+"'"
//        try{
//            def rs=sql.firstRow(strgetid)
//            id = rs.get("id").toString()
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        str = "select name from theme_info where parent = '"+id+"'"
//        try{
//            sql.eachRow(str)
//                    {
//                        row->
//                        list.add(row.name)
//                    }
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        finally{
//            sql.close()
//        }
//        return list
//    }
//    public static int CountCube()
//    {
//        Sql sql=getsql()
//        def result = new String()
//        try
//        {
//            def rs=sql.firstRow("select count(*) as total from theme_info2")
//            result = rs.get("total").toString()
//        }
//         catch (Exception e)
//         {
//             e.printStackTrace();
//         }
//        finally{
//            sql.close()
//        }
//        return result.toInteger()
//    }
//
//    public static List<BkCube> getByPage(PageBean page)
//    {
//        Sql sql=getsql()
//        Sql sqlinner = getsql()
////        def rs=sql.firstRow("select count(*) as total from photo_info")
//        def rs
//        def rs1
//        BkCube cube
//        List<BkCube> items = new ArrayList<BkCube>()
//        def pagesize = page.getPageSize()
//        def pageindex = page.getCurrentPage()
//        def first =  pagesize * (pageindex - 1)
////        print first
//        String pagestr,corestr
//        corestr =  "select a.id,a.name,a.parent, b.url,b.content,b.catalogue from theme_info a ,theme_info2 b where a.id = b.id"
//        pagestr = "select * from(select A.*,ROWNUM RN from ("+corestr+") A where ROWNUM <="+pagesize*pageindex+") where RN>"+first
////        print str
////        sql.eachRow("select id,tablebs,objectid,memo from photo_info")
//        try
//        {
//            sql.eachRow(pagestr)
//                    {
//                        row->
//                        cube = new BkCube()
//                        cube.id = row.id
//                        cube.name = row.name
//                        cube.parent = row.catalogue
//                        cube.url = row.url
//                        cube.contentpath = row.content
//                        items.add(cube)
//                    }
//        }
//        catch (Exception e)
//        {
//            e.printStackTrace();
//        }
//        finally{
//            sql.close()
//        }
//         return items
//     }
//
//    public static boolean deletesingle(String id)
//    //删除立方体
//    {
//        Sql sql=getsql()
//        String str,str2
//        str  = "delete from theme_info where id = "+id
//        str2 = "delete from theme_info2 where id="+id
//        println str
//        println str2
//        try
//        {
//           sql.execute(str)
//           sql.execute(str2)
//        }
//        catch (Exception e)
//        {
////            e.printStackTrace();
//            return false;
//        }
//        finally
//        {
//            sql.close()
//        }
//        return true;
//    }
//    
//    public  static boolean deleteall(String[] ids)
//    //批量删除
//    {
////        for(int i=0;i<ids.length;i++)
////            println ids[i]
//        Sql sql=getsql()
//        String str,str2
//
//        try
//        {
//            for(int i=0;i<ids.length;i++)
//            {
//                str  = "delete from theme_info where id = "
//                str2 = "delete from theme_info2 where id="
//                str += ids[i];
//                str2 += ids[i];
//                sql.execute(str)
//                sql.execute(str2)
//
//            }
//
//        }
//        catch (Exception e)
//        {
////            e.printStackTrace();
//            return false
//        }
//        finally
//        {
//            sql.close()
//        }
//        return true
//    }
//    //删除二级目录
//    public  static boolean deleteCatalogue(String sydl,String ejfl)
//    //批量删除
//    {
////        for(int i=0;i<ids.length;i++)
////            println ids[i]
//        Sql sql=getsql()
//        def rs
//        String getid,getallcube,delete,str,str2,id
//        getid = "select id from theme_info where name = '"+ejfl+"' and parent = (select id from theme_info where name ='"+sydl+"')"
//        getallcube = "select id from theme_info where parent ='"
//        delete = "delete from theme_info where id='"
//        try
//        {
//            rs = sql.firstRow(getid)
//            id = rs.get("id").toString()
//            getallcube = getallcube + id + "'"
//            delete = delete + id + "'" 
////            println getallcube
////            println delete
//            sql.execute(delete)
//            sql.eachRow(getallcube)
//             {
//               row->
//               if(row!=null)
//               {
//                   str = "delete from theme_info where id='"
//                   str2 = "delete from theme_info2 where id='"
//                   str += row.id+"'"
//                   str2 += row.id+"'"
//                   sql.execute(str)
//                   sql.execute(str2)
//               }
//             }
//                
//            
//
//        }
//        catch (Exception e)
//        {
////            e.printStackTrace();
//            return false
//        }
//        finally
//        {
//            sql.close()
//        }
//        return true
//    }

}
