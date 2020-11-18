package es.unizar.sisinf.grp1.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import es.unizar.sisinf.grp1.model.Usuarios;

public class UsuariosDao {

    public int registerUsuarios(Usuarios usuarios) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO usuarios" +
            "  (first_name, last_name, dni, password, hospital, trabajo, birthplace, birthdate, postalcode) VALUES " +
            " (?, ?, ?, ?, ?,?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/usuarios?useSSL=false", "root", "root");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(1, usuarios.getNombre());
            preparedStatement.setString(2, usuarios.getApellidos());
            preparedStatement.setString(3, usuarios.getDNI());
            preparedStatement.setString(4, usuarios.getPassword());
            preparedStatement.setString(5, usuarios.getHospital());
            preparedStatement.setString(6, usuarios.getTrabajo());
            preparedStatement.setString(7, usuarios.getLugar());
            preparedStatement.setString(8, usuarios.getNacimiento());
            preparedStatement.setString(9, usuarios.getCodigoPostal());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}