package basededatoscrear;

import java.sql.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class MainOperativa {

	public static void main(String[] args) {
		
		
		

		
			int opcion=0;
			
			do {
				System.out.println("Introduzca una opcion\n"
						+ "1.Insertar Registro\n"
						+ "2.Eliminar Registro\n"
						+ "3.Modificar Registro\n"
						+ "4.Consultar Registro");
				Scanner sc=new Scanner(System.in);
				opcion=sc.nextInt();
			switch (opcion) {
			case 1:
				Inserta();
				break;
			case 2:
				Elimina();
				break;
			case 3:
				Modifica();
				break;
			case 4:
				Consulta();
				break;
			
			}
				
				
				
			}while (opcion<=4&&opcion>0);
			
			
		
	}

	private static void Modifica() {
		
		Connection conn;
		try {
			conn = DriverManager.getConnection(
					"jdbc:mariadb://localhost:3305/db2amtbis",
					"root","root"
					);
			String dni= null, nombre= null, direccion= null, provincia= null, email= null;
			Scanner sc=	new Scanner(System.in);
			System.out.println("Introduce un DNI para modificar datos");
			dni=sc.nextLine();
			Statement sent = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_UPDATABLE);
			String ssql="SELECT * FROM alumnos WHERE IDN='"+dni+"'";
			ResultSet rs = sent.executeQuery(ssql);
			while(rs.next()) {
				System.out.println("Esto es lo que quieres modificar");
				System.out.println("------------------------------------------------------");
				System.out.println("IDN    APENOM      DIRECCION     PROV    EMAIL");
				System.out.printf(		
						rs.getString(1)+"       "+rs.getString(2)+"        "+rs.getString(3)+"        "+rs.getString(4)+"         "+rs.getString(5));
				
			System.out.println();
			System.out.println();
			}
			rs.previous();
			dni=rs.getString(1);
			nombre=rs.getString(2);
			direccion=rs.getString(3);
			provincia=rs.getString(4);
			email=rs.getString(5);
			
			int opcion;
			do {
				System.out.println("Que dato quieres modificar?"	
						+ "1.dni"
						+ "2.nombre y apellidos"
						+ "3.direccion"
						+ "4.provincia"
						+ "5.email"
						+ "6.Salir");
				opcion=sc.nextInt();
				switch (opcion) {
				case 1:
					dni=sc.nextLine();
					System.out.println("Introduce el nuevo dni");
					dni=sc.nextLine();
					break;
				case 2:
					nombre=sc.nextLine();
					System.out.println("Introduce el nuevo nombre");
					nombre=sc.nextLine();
					break;
				case 3:
					direccion=sc.nextLine();
					System.out.println("Introduce la nueva direccion");
					direccion=sc.nextLine();
					break;
				case 4:
					provincia= sc.nextLine();
					System.out.println("Introduce la nueva provincia");
					provincia= sc.nextLine();
					break;
				case 5:
					email=sc.nextLine();
					System.out.println("Introduce el nuevo email");
					email=sc.nextLine();
					break;
				case 6:
				System.out.println("Se procede al cambio de datos");
				break;
				default:
					System.out.println("Error en datos");
				}
			} while (opcion<=5&&opcion>0);
			
			rs.updateString(1, dni);
			rs.updateString(2, nombre);
			rs.updateString(3, direccion);
			rs.updateString(4, provincia);
			rs.updateString(5, email);
			rs.updateRow();
			System.out.println("Esto es lo que has introducido");
			Statement sent2 = conn.createStatement();
			String ssql2="SELECT * FROM alumnos WHERE IDN='"+dni+"'";
			ResultSet rs2 = sent2.executeQuery(ssql2		);
			while(rs2.next()) {
				System.out.println("------------------------------------------------------");
				System.out.println("IDN    APENOM      DIRECCION     PROV    EMAIL");
				System.out.printf(		
						rs.getString(1)+"       "+rs.getString(2)+"        "+rs.getString(3)+"        "+rs.getString(4)+"         "+rs.getString(5));
				
			System.out.println();
			System.out.println();
			}
			rs.close();
			rs2.close();
			sent.close();
			sent2.close();
			conn.close();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
			
	
		
	}

	private static void Consulta() {
		try {
			Connection conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3305/db2amtbis",
					"root","root"
					);
			String dni;
			Scanner sc= new Scanner(System.in);
			System.out.println("Introduce el dni para consultar");
			dni=sc.nextLine();
			Statement sent = conn.createStatement();
			String ssql="SELECT * FROM alumnos WHERE IDN='"+dni+"'";
				ResultSet rs = sent.executeQuery(ssql);
				while(rs.next()) {
					System.out.println("------------------------------------------------------");
					System.out.println("IDN    APENOM      DIRECCION     PROV    EMAIL");
					System.out.printf(		
							rs.getString(1)+"       "+rs.getString(2)+"        "+rs.getString(3)+"        "+rs.getString(4)+"         "+rs.getString(5));
					
				System.out.println();
				System.out.println();
				}
					rs.close();
					sent.close();
					conn.close();
			
				
			
			System.out.println();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	
		
	}



	private static void Elimina() {
		try {
			Connection conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3305/db2amtbis",
					"root","root"
					);
			Scanner sc=new Scanner(System.in);
			System.out.println("Introduce un DNI para eliminar");
			String dni=sc.nextLine();
			String ssql="DELETE FROM ALUMNOS WHERE IDN = '"+dni+"'";
			Statement sent = conn.createStatement();
			int filas = sent.executeUpdate(ssql);	
			System.out.println("El numero de filas afectadas es de "+ filas);
			conn.close();
			
		}catch (SQLException sql) {
			System.out.println("");
			sql.printStackTrace();
		}
	}

	private static void Inserta() {
		try {
			Connection conn = DriverManager.getConnection(
					"jdbc:mariadb://127.0.0.1:3305/db2amtbis",
					"root","root"
					);
		Scanner sc=new Scanner(System.in);
		System.out.println("Introduce un DNI");
		String dni=sc.nextLine();
		System.out.println("Introduce un Apellidos y Nombre");
		String nombre=sc.nextLine();
		System.out.println("Introduce una Direccion");
		String direccion=sc.nextLine();
		System.out.println("Introduce una Provincia");
		String provincia=sc.nextLine();
		System.out.println("Introduce un email");
		String email=sc.nextLine();
		String ssql="INSERT INTO ALUMNOS VALUES(?,?,?,?,?)";
		PreparedStatement sent = conn.prepareStatement(ssql);
		sent.setString(1, dni);
		sent.setString(2, nombre);
		sent.setString(3, direccion);
		sent.setString(4, provincia);
		sent.setString(5, email);		
		int filas = sent.executeUpdate();
		System.out.println("El numero de filas afectadas es de "+ filas);
		if (filas>=1) {
			System.out.println("Esto es lo que has introducido");
			Statement sent2 = conn.createStatement();
			String ssql2="SELECT * FROM alumnos WHERE IDN='"+dni+"'";
			ResultSet rs = sent2.executeQuery(ssql2		);
			while(rs.next()) {
				System.out.printf(
						rs.getString(1)+rs.getString(2)+rs.getString(3)+rs.getString(4)+rs.getString(5));
			}
			rs.close();
			sent.close();
			conn.close();
			System.out.println();
			
		}
		conn.close();
		}catch (SQLException sql) {
			System.out.println("");
			sql.printStackTrace();
		}	
	
		
	}

}
