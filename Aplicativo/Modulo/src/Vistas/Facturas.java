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
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import javax.swing.table.DefaultTableModel;

public class Facturas extends JFrame {

	private static final long serialVersionUID = 1L;
	private JPanel background;
	private JTextField txtCedula;
	private JLabel lblinfo;
	private JSeparator separator;
	private JTextField txtColocarCargo;
	private JTable table;
	private JTextField txtAquLaId;
	private JTable table_1;
	private JTextField txtTotalProductos;
	private JTextField txtIva;
	private JTextField txtTotalFactura;

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
		setBounds(100, 100, 552, 521);
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
		
		final JButton btnAceptar = new JButton("ACEPTAR");
		btnAceptar.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnAceptar.setBackground(new Color(240, 230, 140));
		btnAceptar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnAceptar.setBorder(null);
		btnAceptar.setBounds(21, 100, 257, 23);
		btnAceptar.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnAceptar.setBackground(new Color(255, 255, 0));
			}
			
			
			public void mouseExited(MouseEvent e) {
				btnAceptar.setBackground(new Color(240, 230, 140));
			}
		});
		background.add(btnAceptar);
		
		final JButton btnLimpiarTabla = new JButton("LIMPIAR TABLA");
		btnLimpiarTabla.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			}
		});
		btnLimpiarTabla.setBackground(new Color(250, 240, 230));
		btnLimpiarTabla.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnLimpiarTabla.setBorder(null);
		btnLimpiarTabla.setBounds(300, 204, 210, 23);
		btnLimpiarTabla.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnLimpiarTabla.setBackground(new Color(250, 128, 114));
			}
			
			public void mouseExited(MouseEvent e) {
				btnLimpiarTabla.setBackground(new Color(250, 240, 230));
			}
			public void mouseClicked(MouseEvent e) {
				setTextDefault();
				}
		});
		background.add(btnLimpiarTabla);
		
		JButton btnLimpiarTodo = new JButton("LIMPIAR TODO");
		btnLimpiarTodo.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnLimpiarTodo.setBorder(null);
		btnLimpiarTodo.setBackground(new Color(250, 240, 230));
		btnLimpiarTodo.setBounds(21, 160, 257, 23);
		btnLimpiarTodo.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnLimpiarTodo.setBackground(new Color(250, 128, 114));
			}
			
			public void mouseExited(MouseEvent e) {
				btnLimpiarTodo.setBackground(new Color(250, 240, 230));
			}
			public void mouseClicked(MouseEvent e) {
				setTextDefault();
				}
		});
		background.add(btnLimpiarTodo);
		
		
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
		
		JButton btnTerminar = new JButton("TERMINAR");
		btnTerminar.setFont(new Font("Roboto Black", Font.PLAIN, 14));
		btnTerminar.setBorder(null);
		btnTerminar.setBackground(new Color(240, 255, 240));
		btnTerminar.setBounds(21, 130, 257, 23);
		btnTerminar.addMouseListener(new MouseAdapter() {
			public void mouseEntered(MouseEvent e) {
				btnTerminar.setBackground(new Color(152, 251, 152));
			}
			
			
			public void mouseExited(MouseEvent e) {
				btnTerminar.setBackground(new Color(240, 255, 240));
			}
		});
		background.add(btnTerminar);
		
		
		//---- Imagenes
		
		JLabel lblEmpleadoPic = new JLabel("Empleado Imagen");
		lblEmpleadoPic.setVerticalAlignment(SwingConstants.TOP);
		lblEmpleadoPic.setIcon(new ImageIcon(Facturas.class.getResource("/imagenes/RayoProf2.jpg")));
		lblEmpleadoPic.setBackground(SystemColor.activeCaption);
		lblEmpleadoPic.setBounds(21, 29, 57, 57);
		background.add(lblEmpleadoPic);
		
		JLabel lblClientePic = new JLabel("Cliente Imagen");
		lblClientePic.setVerticalAlignment(SwingConstants.TOP);
		lblClientePic.setIcon(new ImageIcon(Facturas.class.getResource("/imagenes/RayoProf.jpg")));
		lblClientePic.setBackground(SystemColor.activeCaption);
		lblClientePic.setBounds(21, 204, 57, 57);
		background.add(lblClientePic);
		
		
		// ------ Labels
		
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
		
		JLabel nombreCliente = new JLabel("Aquí nombre Cliente");
		nombreCliente.setFont(new Font("Roboto", Font.BOLD, 18));
		nombreCliente.setBounds(88, 204, 190, 20);
		background.add(nombreCliente);
		
		txtAquLaId = new JTextField();
		txtAquLaId.setText("Aquí la ID de la persona");
		txtAquLaId.setForeground(Color.GRAY);
		txtAquLaId.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtAquLaId.setEditable(false);
		txtAquLaId.setColumns(10);
		txtAquLaId.setBorder(null);
		txtAquLaId.setBackground(Color.WHITE);
		txtAquLaId.setBounds(88, 225, 190, 20);
		background.add(txtAquLaId);
		
		
		txtTotalProductos = new JTextField();
		txtTotalProductos.setText("Total productos y servicios: xxx");
		txtTotalProductos.setForeground(new Color(0, 0, 0));
		txtTotalProductos.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtTotalProductos.setEditable(false);
		txtTotalProductos.setColumns(10);
		txtTotalProductos.setBorder(null);
		txtTotalProductos.setBackground(Color.WHITE);
		txtTotalProductos.setBounds(21, 368, 278, 20);
		background.add(txtTotalProductos);
		
		txtIva = new JTextField();
		txtIva.setText("Iva(16% sobre el total): xxx");
		txtIva.setForeground(new Color(0, 0, 0));
		txtIva.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtIva.setEditable(false);
		txtIva.setColumns(10);
		txtIva.setBorder(null);
		txtIva.setBackground(Color.WHITE);
		txtIva.setBounds(21, 393, 278, 20);
		background.add(txtIva);
		
		txtTotalFactura = new JTextField();
		txtTotalFactura.setText("Total Factura: xxxx");
		txtTotalFactura.setForeground(new Color(0, 0, 0));
		txtTotalFactura.setFont(new Font("Roboto Light", Font.PLAIN, 16));
		txtTotalFactura.setEditable(false);
		txtTotalFactura.setColumns(10);
		txtTotalFactura.setBorder(null);
		txtTotalFactura.setBackground(Color.WHITE);
		txtTotalFactura.setBounds(21, 419, 278, 20);
		background.add(txtTotalFactura);

		
		// ------ TABLA Y MODELOS
		
		table_1 = new JTable();
		table_1.setModel(new DefaultTableModel(
			new Object[][] {
				{"Item", "Tipo Detalle", "Ref Producto", "Cantidad", "Precio"},
				{null, null, null, null, null},
				{null, null, null, null, null},
				{null, null, null, null, null},
				{null, null, null, null, null},
			},
			new String[] {
				"Item", "Tipo Detalle", "Ref Producto", "Cantidad", "Precio"
			}
		));
		table_1.setBounds(21, 272, 489, 83);
		background.add(table_1);
		
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
