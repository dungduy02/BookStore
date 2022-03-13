package BookStore.Model;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public class User extends AbstracModel {
    private String username;
    private String password;
    private String fullname;
    private long status;
    private String email;
    private int addressid;
    private String sex;
    private Date Date;
    private String phone;

    public User() {
    }

    public User(String username, String password, String fullname, long status, String email,
                int addressid, String sex, Date date, String phone) {
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.status = status;
        this.email = email;
        this.addressid = addressid;
        this.sex = sex;
        Date = date;
        this.phone = phone;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public long getStatus() {
        return status;
    }

    public void setStatus(long status) {
        this.status = status;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getAddressid() {
        return addressid;
    }

    public void setAddressid(int addressid) {
        this.addressid = addressid;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String gender) {
        this.sex = gender;
    }

    public java.util.Date getDate() {
        return Date;
    }

    public void setDate(java.util.Date date) {
        Date = date;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String toMd5(String str){
        String result = "";
        MessageDigest digest;
        try {
            digest = MessageDigest.getInstance("MD5");
            digest.update(str.getBytes());
            BigInteger bigInteger = new BigInteger(1,digest.digest());
            result = bigInteger.toString(16);
        } catch ( NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return result;
    }

    public void setPasswordMD5(String pass){
        String result = "";
        MessageDigest digest;
        try {
            digest = MessageDigest.getInstance("MD5");
            digest.update(pass.getBytes());
            BigInteger bigInteger = new BigInteger(1,digest.digest());
            result = bigInteger.toString(16);
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        this.password  = result;
    }


}
