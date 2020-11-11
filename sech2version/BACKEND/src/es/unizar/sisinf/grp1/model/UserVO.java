package es.unizar.sisinf.grp1.model;

public class UserVO {
	private String nombre;
	private int id;
	private String apellidos;
	private String password;
	private String userName;

	UserVO(String nombre, int id, String apellidos, String password, String userName) {
		this.apellidos = apellidos;
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.userName = userName;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getApellidos() {
		return apellidos;
	}

	public void setApellidos(String apellidos) {
		this.apellidos = apellidos;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}
	

}