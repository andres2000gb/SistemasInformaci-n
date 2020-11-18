package es.unizar.sisinf.grp1.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import es.unizar.sisinf.grp1.dao.UsuariosDao;
import es.unizar.sisinf.grp1.model.Usuarios;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class UsuariosServlet extends HttpServlet {
    private static final long serialVersionUID = 1 L;
    private UsuariosDao usuariosDao;

    public void init() {
        usuariosDao = new UsuariosDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String dni = request.getParameter("dni");
        String password = request.getParameter("password");
        String hospital = request.getParameter("hospital");
        String trabajo = request.getParameter("trabajo");
        String birthplace = request.getParameter("birthplace");
        String birthdate = request.getParameter("birthdate");
        String postalcode = request.getParameter("postalcode");

        Usuarios usuarios = new Usuarios();
        usuarios.setNombre(firstName);
        usuarios.setApellidos(lastName);
        usuarios.setDNI(dni);
        usuarios.setPassword(password);
        usuarios.setHospital(hospital);
        usuarios.setTrabajo(trabajo);
        usuarios.setLugar(birthplace);
        usuarios.setNacimiento(birthdate);
        usuarios.setCodigoPostal(postalcode);

        try {
            usuariosDao.registerUsuarios(usuarios);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

        response.sendRedirect("usuariodetails.jsp");
    }
}