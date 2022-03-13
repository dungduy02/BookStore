package BookStore.Model;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.Timestamp;
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
    private Integer status;
    private Integer blogid;

    public User() {
    }


    public User(String username, String password, String fullname, long status, String email,
                int addressid, String sex, Date date, String phone) {

//     public User(int id, String username, String password, String fullname, String email, String address, String gender, String phone, Integer status, Integer blogid) {
//         this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.status = status;
        this.email = email;
        this.addressid = addressid;
        this.sex = sex;
        Date = date;
//         this.address = address;
//         this.gender = gender;
        this.phone = phone;
        this.status = status;
        this.blogid = blogid;
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

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getBlogid() {
        return blogid;
    }

    public void setBlogid(Integer blogid) {
        this.blogid = blogid;
    }
}
