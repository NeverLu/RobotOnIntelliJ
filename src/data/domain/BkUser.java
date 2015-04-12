package data.domain;

/**
 * BkUser entity. @author MyEclipse Persistence Tools
 */

public class BkUser implements java.io.Serializable {

	// Fields
    private String ucode;
    private String uname;
    private String upwd;
    //	private String addvcd;
//    private String role;
//    private String rolenm;


    public BkUser() {
    }
    public BkUser(String ucode, String uname, String upwd) {
//        public BkUser(String ucode, String uname, String upwd, String role, String rolenm) {
        this.ucode = ucode;
        this.uname = uname;
        this.upwd = upwd;
//        this.role = role;
//        this.rolenm = rolenm;
    }

    public BkUser(String uname, String upwd) {
        this.uname = uname;
        this.upwd = upwd;
    }

    public String getUcode() {
        return ucode;
    }

    public void setUcode(String ucode) {
        this.ucode = ucode;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpwd() {
        return upwd;
    }

    public void setUpwd(String upwd) {
        this.upwd = upwd;
    }

//    public String getRole() {
//        return role;
//    }
//
//    public void setRole(String role) {
//        this.role = role;
//    }
//
//    public String getRolenm() {
//        return rolenm;
//    }
//
//    public void setRolenm(String rolenm) {
//        this.rolenm = rolenm;
//    }







}