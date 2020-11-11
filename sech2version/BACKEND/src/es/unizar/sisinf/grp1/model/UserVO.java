package es.unizar.sisinf.grp1.model;

public class UserVO {
	private String nombre;
	private int id;
	private String apellidos;
	private String password;
	private String userName;
	private int codigoPostal;
	private String nacimiento;

	UserVO(String nombre, int id, String apellidos, String password, int CodigoPostal, String nacimiento) {
		this.apellidos = apellidos;
		this.id = id;
		this.nombre = nombre;
		this.password = password;
		this.codigoPostal = CodigoPostal;
		this.nacimiento = nacimiento;
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

	public int getCodigoPostal() {
		return codigoPostal;
	}

	public void setCodigoPostal(int codigoPostal) {
		this.codigoPostal = codigoPostal;
	}

	public String getNacimiento() {
		return nacimiento;
	}

	public void setNacimiento(String nacimiento) {
		this.naicmiento = nacimiento;
	}
	

}