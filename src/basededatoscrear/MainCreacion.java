package basededatoscrear;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

public class MainCreacion {

	public static void main(String[] args) {
		
	
	
				
				
				try {
					Connection conn = DriverManager.getConnection(
							"jdbc:mariadb://localhost:3305/db2amtbis",
							"root","root"
							);	

					String fichero="bd2amt.sql";
					String datos;
					Statement sent = conn.createStatement();
					String Linea="";
					System.out.println("");
					
					
					try {
						FileReader fr=new FileReader(fichero);
						BufferedReader br= new BufferedReader(fr);
						try {
							;
							
							while((datos=br.readLine())!=null) {
								if(datos.contains("/")) {
									continue;
								} else if(datos.isBlank()) {
									continue;
								}
								if(datos.contains(";")){
								Linea=Linea+datos;
								sent.execute(Linea);
								Linea="";
								continue;
								}
								Linea=Linea+datos;
							
							
							}
				
						fr.close();
				
				
			} catch (IOException e) {
				System.out.println("Hubo un error raro.");
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			System.out.println("Fichero no encontrado.");
			e.printStackTrace();
		}
			
				} catch (SQLException sql) {
					System.out.println("Error al conectar la base de datos.");
					sql.printStackTrace();
				}

	}

}
