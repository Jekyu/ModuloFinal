package Vistas;
import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.JComboBox;
import javax.swing.JTextField;
import javax.swing.JLabel;
import java.awt.SystemColor;
import javax.swing.JButton;
import java.awt.Color;
import java.awt.Font;
import javax.swing.border.LineBorder;
import javax.swing.border.EtchedBorder;
import javax.swing.JSeparator;
import javax.swing.ImageIcon;
import javax.swing.SwingConstants;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public class Login extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel background;
	private JTextField txtCodigo;
	private JTextField txtCedula;
	private JLabel lblinfo;
	private JSeparator separator;
	private JSeparator separator_1;
	private JLabel lblNewLabel;


	/**
	 * Create the frame.
	 */
	public Login() {
		setTitle("INICIO DE SESION");
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 606, 468);
		background = new JPanel();
		background.setBackground(new Color(255, 255, 255));
		background.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(background);
		background.setLayout(null);
		
		//-----  JTextField
		
		txtCodigo = new JTextField();
		txtCodigo.setBounds(300, 123, 200, 20);
		background.add(txtCodigo);
		txtCodigo.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				 if(txtCodigo.getText().equals("Ingrese su código")) {
					 textDefault(txtCodigo, "", true, new Color(0, 0, 0));
				 }
			}
			public void mouseExited(MouseEvent e) {
				if(txtCodigo.getText().equals("")) {
					textDefault(txtCodigo, "Ingrese su código", false, new Color(128, 128, 128));
					}
			}
		});
		
		txtCedula = new JTextField();
		txtCedula.setBounds(300, 203, 200, 20);
		txtCedula.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				 if(txtCedula.getText().equals("Ingrese su identificación")) {
					 textDefault(txtCedula, "", true, new Color(0, 0, 0));
				 }
			}
			
			public void mouseExited(MouseEvent e) {
				if(txtCedula.getText().equals("")) {
					textDefault(txtCedula, "Ingrese su identificación", false, new Color(128, 128, 128));
				}
			}
		});
		background.add(txtCedula);
		
		setTextDefault();

		
		//-----------  Separadores
		
		separator = new JSeparator();
		separator.setBackground(new Color(128, 128, 128));
		separator.setForeground(new Color(128, 128, 128));
		separator.setBounds(300, 148, 200, 1);
		background.add(separator);
		
		separator_1 = new JSeparator();
		separator_1.setForeground(new Color(128, 128, 128));
		separator_1.setBackground(Color.BLACK);
		separator_1.setBounds(300, 228, 200, 1);
		background.add(separator_1);
		
		
		//------------Botones 
		
		final JButton btnAceptar = new JButton("ACEPTAR");
		btnAceptar.setBackground(new Color(240, 255, 240));
		btnAceptar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnAceptar.setBorder(null);
		btnAceptar.setBounds(300, 283, 200, 23);
		btnAceptar.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnAceptar.setBackground(new Color(152, 251, 152));
			}
			
			
			public void mouseExited(MouseEvent e) {
				btnAceptar.setBackground(new Color(240, 255, 240));
			}
		});
		background.add(btnAceptar);
		
		final JButton btnLimpiar = new JButton("LIMPIAR");
		btnLimpiar.setBackground(new Color(250, 240, 230));
		btnLimpiar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnLimpiar.setBorder(null);
		btnLimpiar.setBounds(300, 313, 200, 23);
		btnLimpiar.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnLimpiar.setBackground(new Color(250, 128, 114));
			}
			
			public void mouseExited(MouseEvent e) {
				btnLimpiar.setBackground(new Color(250, 240, 230));
			}
			public void mouseClicked(MouseEvent e) {
				setTextDefault();
				}
		});
		background.add(btnLimpiar);
		
		
		JLabel lblImagen = new JLabel("New label");
		lblImagen.setVerticalAlignment(SwingConstants.TOP);
		lblImagen.setIcon(new ImageIcon(Login.class.getResource("/imagenes/EL RASHO.png")));
		lblImagen.setBackground(SystemColor.activeCaption);
		lblImagen.setBounds(0, 0, 217, 437);
		background.add(lblImagen);
		
		lblinfo = new JLabel("INICIO DE SESIÓN");
		lblinfo.setFont(new Font("Roboto", Font.BOLD, 24));
		lblinfo.setBounds(300, 30, 200, 27);
		background.add(lblinfo);
		
		
	}
	
	// ---- Con textDefault tambien se puede agregar los datos de la consulta 
	
	public void textDefault(JTextField txtCaja, String mensaje, boolean bol, Color col ){
		txtCaja.setText(mensaje);
		txtCaja.setForeground(col);
		txtCaja.setEditable(bol);
		txtCaja.setBackground(new Color(255, 255, 255));
		txtCaja.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtCaja.setBorder(null);
		txtCaja.setColumns(10);
	}
	
	public void setTextDefault() {
		textDefault(txtCodigo, "Ingrese su código", false, new Color(128, 128, 128));
		textDefault(txtCedula, "Ingrese su identificación", false, new Color(128, 128, 128));
	
	}
			
}
