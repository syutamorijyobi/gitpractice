package dto;

public class KadaiAccount {
	private int id;
	private String name;
	private int age;
	private int jender;
	private String tel;
	private String mail;
	private String salt;
	private String password;
	private String hashedPassword;
	public KadaiAccount(int id, String name, int age, int jender, String tel, String mail, String salt, String password,
			String hashedPassword) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
		this.jender = jender;
		this.tel = tel;
		this.mail = mail;
		this.salt = salt;
		this.password = password;
		this.hashedPassword = hashedPassword;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getJender() {
		return jender;
	}
	public void setJender(int jender) {
		this.jender = jender;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getHashedPassword() {
		return hashedPassword;
	}
	public void setHashedPassword(String hashedPassword) {
		this.hashedPassword = hashedPassword;
	}
	
}