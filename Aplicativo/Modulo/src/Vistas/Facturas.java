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
import javax.swing.table.TableColumn;
import javax.swing.border.EtchedBorder;
import javax.swing.JSeparator;
import javax.swing.ImageIcon;
import javax.swing.SwingConstants;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;
import javax.swing.JTable;
import javax.swing.JTextArea;

public class Facturas extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel background;
	private JTextField txtCedula;
	private JLabel lblinfo;
	private JSeparator separator;
	private JTextField txtColocarCargo;
	private JTable table;
	private JTextField txtAquLaId;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Facturas frame = new Facturas();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Facturas() {
		setTitle("Facturas");
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 595, 476);
		background = new JPanel();
		background.setBackground(new Color(255, 255, 255));
		background.setBorder(new EmptyBorder(5, 5, 5, 5));

		setContentPane(background);
		background.setLayout(null);
		
		//-----  JTextField
		
		txtCedula = new JTextField();
		txtCedula.setBounds(300, 60, 210, 20);
		background.add(txtCedula);
		txtCedula.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				 if(txtCedula.getText().equals("Ingrese cedula del cliente")) {
					 textDefault(txtCedula, "", true, new Color(0, 0, 0));
				 }
			}
			public void mouseExited(MouseEvent e) {
				if(txtCedula.getText().equals("")) {
					textDefault(txtCedula, "Ingrese cedula del cliente", false, new Color(128, 128, 128));
					}
			}
		});
		
		setTextDefault();
		
		//- --- -- ComboBox
		
		JComboBox cBoxDetalle= new JComboBox();
		cBoxDetalle.setEditable(true);
		cBoxDetalle.setBackground(new Color(255, 255, 255));
		cBoxDetalle.setBorder(null);
		cBoxDetalle.setFont(new Font("Roboto", Font.PLAIN, 13));
		cBoxDetalle.setBounds(300, 155, 100, 22);
		background.add(cBoxDetalle);
		
		JComboBox cBoxNoFac = new JComboBox();
		cBoxNoFac.setEditable(true);
		cBoxNoFac.setToolTipText("");
		cBoxNoFac.setBackground(new Color(255, 255, 255));
		cBoxNoFac.setBorder(null);
		cBoxNoFac.setFont(new Font("Roboto", Font.PLAIN, 13));
		cBoxNoFac.setBounds(410, 155, 100, 22);
		background.add(cBoxNoFac);

		
		//-----------  Separadores
		
		separator = new JSeparator();
		separator.setBackground(new Color(128, 128, 128));
		separator.setForeground(new Color(128, 128, 128));
		separator.setBounds(300, 85, 210, 1);
		background.add(separator);
		
		
		//------------Botones 
		
		final JButton btnGuardar = new JButton("GUARDAR");
		btnGuardar.setBackground(new Color(240, 255, 240));
		btnGuardar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnGuardar.setBorder(null);
		btnGuardar.setBounds(21, 120, 210, 23);
		btnGuardar.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnGuardar.setBackground(new Color(152, 251, 152));
			}
			
			
			public void mouseExited(MouseEvent e) {
				btnGuardar.setBackground(new Color(240, 255, 240));
			}
		});
		background.add(btnGuardar);
		
		final JButton btnLimpiar = new JButton("LIMPIAR");
		btnLimpiar.setBackground(new Color(250, 240, 230));
		btnLimpiar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnLimpiar.setBorder(null);
		btnLimpiar.setBounds(21, 154, 210, 23);
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
		
		
		final JButton btnConsultar = new JButton("CONSULTAR");
		btnConsultar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnConsultar.setBorder(null);
		btnConsultar.setBackground(new Color(176, 224, 230));
		btnConsultar.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnConsultar.setBackground(new Color(102, 205, 170));
			}
			
			
			public void mouseExited(MouseEvent e) {
				btnConsultar.setBackground(new Color(176, 224, 230));
			}
		});
		btnConsultar.setBounds(300, 96, 210, 23);
		background.add(btnConsultar);
		
		JLabel lblImagen = new JLabel("New label");
		lblImagen.setVerticalAlignment(SwingConstants.TOP);
		lblImagen.setIcon(new ImageIcon(Login.class.getResource("/imagenes/EL RASHO.png")));
		lblImagen.setBackground(SystemColor.activeCaption);
		lblImagen.setBounds(21, 29, 57, 57);
		background.add(lblImagen);
		
		
		lblinfo = new JLabel("CONSULTA CLIENTE");
		lblinfo.setFont(new Font("Roboto", Font.BOLD, 18));
		lblinfo.setBounds(300, 29, 210, 20);
		background.add(lblinfo);
		
		JLabel lblDetalle = new JLabel("Detalle");
		lblDetalle.setForeground(new Color(128, 128, 128));
		lblDetalle.setBackground(new Color(255, 255, 255));
		lblDetalle.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		lblDetalle.setBounds(300, 130, 100, 20);
		background.add(lblDetalle);
		
		JLabel lblNoFac = new JLabel("No facturados");
		lblNoFac.setForeground(Color.GRAY);
		lblNoFac.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		lblNoFac.setBackground(Color.WHITE);
		lblNoFac.setBounds(410, 130, 100, 20);
		background.add(lblNoFac);
		
		JLabel nombreTrabajador = new JLabel("Nombre Chambeador");
		nombreTrabajador.setFont(new Font("Roboto", Font.BOLD, 18));
		nombreTrabajador.setBounds(88, 29, 190, 20);
		background.add(nombreTrabajador);
		
		txtColocarCargo = new JTextField();
		txtColocarCargo.setText("Colocar cargo");
		txtColocarCargo.setForeground(Color.GRAY);
		txtColocarCargo.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtColocarCargo.setEditable(false);
		txtColocarCargo.setColumns(10);
		txtColocarCargo.setBorder(null);
		txtColocarCargo.setBackground(Color.WHITE);
		txtColocarCargo.setBounds(88, 47, 190, 20);
		background.add(txtColocarCargo);
		
		/*table = new JTable();
		table.setBounds(42, 209, 1, 1);
		table.addColumn(new TableColumn(10,10,null,null));
		background.add(table);*/
		
		
		JTextArea txtResultado = new JTextArea();
		txtResultado.setText("Aqui insertar los datos");
		txtResultado.setBounds(21, 284, 489, 23);
		background.add(txtResultado);
		
		JTextArea txtResultado_1 = new JTextArea();
		txtResultado_1.setText("Aqui insertar los datos");
		txtResultado_1.setBounds(21, 314, 489, 23);
		background.add(txtResultado_1);
		
		JTextArea txtResultado_2 = new JTextArea();
		txtResultado_2.setText("Aqui insertar los datos");
		txtResultado_2.setBounds(21, 348, 489, 23);
		background.add(txtResultado_2);
		
		JLabel nombreCliente = new JLabel("Aquí nombre Cliente");
		nombreCliente.setFont(new Font("Roboto", Font.BOLD, 18));
		nombreCliente.setBounds(88, 201, 190, 20);
		background.add(nombreCliente);
		
		txtAquLaId = new JTextField();
		txtAquLaId.setText("Aquí la ID de la persona");
		txtAquLaId.setForeground(Color.GRAY);
		txtAquLaId.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtAquLaId.setEditable(false);
		txtAquLaId.setColumns(10);
		txtAquLaId.setBorder(null);
		txtAquLaId.setBackground(Color.WHITE);
		txtAquLaId.setBounds(88, 223, 190, 20);
		background.add(txtAquLaId);
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
	
	//-- Inicializar los JLabel
	public void setTextDefault() {
		textDefault(txtCedula, "Ingrese cedula del cliente", false, new Color(128, 128, 128));
	
	}
}
