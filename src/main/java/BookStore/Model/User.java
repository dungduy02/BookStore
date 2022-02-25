package BookStore.Model;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;

public class User {
    private int id;
    private String username;
    private String password;
    private String fullname;
    private String email;
    private int addressid;
    private String gender;
    private Date Date;
    private String phone;

    public User() {
    }

    public User(int id, String username, String password, String fullname, String email, int addressid, String gender, Date date, String phone) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.fullname = fullname;
        this.email = email;
        this.addressid = addressid;
        this.gender = gender;
        this.Date = date;
        this.phone = phone;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getDate() {
        return Date;
    }

    public void setDate(Date date) {
        this.Date = date;
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
