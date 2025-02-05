package model;

import java.sql.Date;

public class User {
    
    private int userID, roleID;
    private String username, password, name, phone, email, cccd,image, address;
    private Date dob, createdAt;
    private boolean gender, status;

    public User() {
    }
public User(int UserID, String Username, String Password, String FullName, String Image, String Phone, String Email, Date DateOfBirth, boolean Gender, String Address, String CCCD, int RoleID,  boolean Status, User Manager, Date CreatedAt) {
 this.userID = userID;
        this.username = username;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.cccd = cccd;
        this.dob = dob;
        this.createdAt = createdAt;
        this.gender = gender;
        this.status = status;
        this.roleID = roleID;
        this.image = image;
        this.address = address;
    }
    public User(int userID, String username, String password, String name, String phone, String email, Date dob, boolean gender, String cccd, int roleID, boolean status, Date createdAt) {
        this.userID = userID;
        this.username = username;
        this.password = password;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.cccd = cccd;
        this.dob = dob;
        this.createdAt = createdAt;
        this.gender = gender;
        this.status = status;
        this.roleID = roleID;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
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

    public String getName() {
        return name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCccd() {
        return cccd;
    }

    public void setCccd(String cccd) {
        this.cccd = cccd;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public int getRoleID() {
        return roleID;
    }

    public void setRoleID(int roleID) {
        this.roleID = roleID;
    }

    @Override
    public String toString() {
        return "User{" + "userID=" + userID + ", roleID=" + roleID + ", username=" + username + ", password=" + password + ", name=" + name + ", phone=" + phone + ", email=" + email + ", cccd=" + cccd + ", image=" + image + ", address=" + address + ", dob=" + dob + ", createdAt=" + createdAt + ", gender=" + gender + ", status=" + status + '}';
    }

  
    
}
