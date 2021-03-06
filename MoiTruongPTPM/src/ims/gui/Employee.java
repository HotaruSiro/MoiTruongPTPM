/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ims.gui;

import ims.MyEmployee;
import ims.MyEmployeeList;
import ims.Team;
import ims.bll.EmployeeBLL;
import ims.cbItem;
import java.awt.Dialog;
import java.awt.Dimension;
import java.awt.Image;
import java.awt.Toolkit;
import java.io.*;
import java.sql.*;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Collections;
import java.util.GregorianCalendar;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.swing.*;
import javax.swing.JFileChooser;
import javax.swing.filechooser.FileNameExtensionFilter;

/**
 *
 * @author NAT
 */
public class Employee extends javax.swing.JFrame {

    /**
     * Creates new form Employee
     */
    String linkImage;
    EmployeeBLL bll = new EmployeeBLL();
    MyEmployeeList eplList = bll.readEmployeeList();
    DefaultComboBoxModel modelTinhThanh = new DefaultComboBoxModel();
    DefaultComboBoxModel modelQuanHuyen = new DefaultComboBoxModel();
    DefaultComboBoxModel modelQuocTich = new DefaultComboBoxModel();
    DefaultComboBoxModel modelTTHN = new DefaultComboBoxModel();
    DefaultComboBoxModel modelVanHoa = new DefaultComboBoxModel();
    DefaultComboBoxModel modelTrinhDoHV = new DefaultComboBoxModel();
    DefaultComboBoxModel modelNoiCap = new DefaultComboBoxModel();
    DefaultComboBoxModel modelNguyenQuan = new DefaultComboBoxModel();
    DefaultComboBoxModel modelDanToc = new DefaultComboBoxModel();
    DefaultComboBoxModel modelTonGiao = new DefaultComboBoxModel();

    boolean haveDCS;
    boolean haveDTN;
    boolean haveQD;

    public Employee(MyEmployee epl, Team dcs, Team dtn, Team qd) {

        initComponents();
        setTitle("Sửa nhân viên");
        stateButton(false);
//        Hiển thị thông tin lên text field nhan vien
        txtMaNV.setText(epl.getMaNV() + "");
        txtTen.setText(epl.getTen());
        txtCMND.setText(epl.getCMND());
        txtDiDong.setText(epl.getDiDong());
        txtDienThoai.setText(epl.getDienThoai());
        txtEmail.setText(epl.getEmail());
        txtGhiChu.setText(epl.getGhiChu());
        txtHoDem.setText(epl.getHoDem());
        txtHoKhau.setText(epl.getHoKhau());
        txtMSThue.setText(epl.getMST());
        txtNamCap.setText(epl.getNamCap() + "");
        txtNamSinh.setText(epl.getNamSinh() + "");
        txtNgayCap.setText(epl.getNgayCap() + "");
        txtNgaySinh.setText(epl.getNgaySinh() + "");
        txtSoTK.setText(epl.getSTK());
        txtTamTru.setText(epl.getTamTru());
        txtThangCap.setText(epl.getThangCap() + "");
        txtThangSinh.setText(epl.getThangSinh() + "");
        txtThuongTru.setText(epl.getThuongTru());
        ckbGioiTinh.setSelected(epl.isGioiTinh());
//        hien thi thong tin len text field DCS
        if (dcs != null) {
            txtDCSChucVu.setText(dcs.getChucVu());
            txtDCSNoiSinhHoat.setText(dcs.getNoiSinhHoat());
            txtDCSNam.setText(dcs.getNamGiaNhap() + "");
            txtDCSNgay.setText(dcs.getNgayGiaNhap() + "");
            txtDCSThang.setText(dcs.getThangGiaNhap() + "");
            haveDCS = true;
        }
//        hien thi thong tin len text field Doan thanh nien
        if (dtn != null) {
            txtDTNChucVu.setText(dtn.getChucVu());
            txtDTNNoiSinhHoat.setText(dtn.getNoiSinhHoat());
            txtDTNNam.setText(dtn.getNamGiaNhap() + "");
            txtDTNNgay.setText(dtn.getNgayGiaNhap() + "");
            txtDTNThang.setText(dtn.getThangGiaNhap() + "");
            haveDTN = true;
        }
        //        hien thi thong tin len text field quan doi
        if (qd != null) {
            txtQDChucVu.setText(qd.getChucVu());
            txtQDNoiSinhHoat.setText(qd.getNoiSinhHoat());
            txtQDNam.setText(qd.getNamGiaNhap() + "");
            txtQDNgay.setText(qd.getNgayGiaNhap() + "");
            txtQDThang.setText(qd.getThangGiaNhap() + "");
            haveQD = true;
        }
//      fill combobox
        fillCBTinhThanh();
        fillCBDanToc();
        fillCBNguyenQuan();
        fillCBTonGiao();
        fillCBQuanHuyen(epl.getNoiSinh());
        fillCBQuocTich();
        fillCBTinhTrangHN();
        fillCBTringDoHV();
        fillCBVanHoa();
        fillCBNoiCap();

//      Hiện thị thông tin lên combobox
        cbNoiSinh.setSelectedItem(modelTinhThanh.getElementAt(getCbId(epl.getNoiSinh(), modelTinhThanh)));
        cbCMNDNgQuan.setSelectedItem(modelNguyenQuan.getElementAt(getCbId(epl.getNguyenQuan(), modelNguyenQuan)));
        cbCMNDNoiCap.setSelectedItem(modelNoiCap.getElementAt(getCbId(epl.getNoiCap(), modelNoiCap)));
        cbDanToc.setSelectedItem(modelDanToc.getElementAt(getCbId(epl.getDanToc() + "", modelDanToc)));
        cbQH.setSelectedItem(modelQuanHuyen.getElementAt(getCbId(epl.getQuanHuyen(), modelQuanHuyen)));
        cbQuocTich.setSelectedItem(modelQuocTich.getElementAt(getCbId(epl.getQuocTich(), modelQuocTich)));
        cbTTHN.setSelectedItem(modelTTHN.getElementAt(getCbId(epl.getTTHonNhan(), modelTTHN)));
        cbTonGiao.setSelectedItem(modelTonGiao.getElementAt(getCbId(epl.getTonGiao(), modelTonGiao)));
        cbTrinhDoHocVan.setSelectedItem(modelTrinhDoHV.getElementAt(getCbId(epl.getTrinhDoHV(), modelTrinhDoHV)));
        cbVanHoa.setSelectedItem(modelVanHoa.getElementAt(getCbId(epl.getVanHoa(), modelVanHoa)));

        //Resize The ImageIcon
        ImageIcon image = new ImageIcon(epl.getImgByte());
        Image im = image.getImage();
        Image myImg = im.getScaledInstance(lblIcon.getWidth(), lblIcon.getHeight(), Image.SCALE_SMOOTH);
        ImageIcon newImage = new ImageIcon(myImg);
        lblIcon.setIcon(newImage);
    }

    public Employee() {

        initComponents();
        setTitle("Thêm nhân viên");
        stateButton(true);
        setInfoDialog();
        String randomManV = randomMaNV() + "";
        txtMaNV.setText(randomManV);
        fillCBTinhThanh();
        fillCBDanToc();
        fillCBNguyenQuan();
        fillCBTonGiao();
        fillCBQuanHuyen("1");
        fillCBQuocTich();
        fillCBTinhTrangHN();
        fillCBTringDoHV();
        fillCBVanHoa();
        fillCBNoiCap();
    }
//    Hàm trả về đối tượng cb tìm thấy

    public int getCbId(String id, DefaultComboBoxModel model) {
        cbItem item = new cbItem();
        for (int i = 0; i < model.getSize(); i++) {
            item = (cbItem) model.getElementAt(i);
            if (item.getId().equalsIgnoreCase(id)) {
                return i;
            }
        }
        return 0;
    }

    public void setInfoDialog() {
        Dimension dimension = Toolkit.getDefaultToolkit().getScreenSize();
        int x = (int) ((dimension.getWidth() - getWidth()) / 2);
        int y = (int) ((dimension.getHeight() - getHeight()) / 2);
        setLocation(x, y);
        setResizable(false);
    }

    public void stateButton(boolean value) {

//        btNew.setVisible(value);
//        btEdit.setVisible(value);
//        btDelete.setVisible(value);
//        btPrint.setVisible(value);
//        btClose.setVisible(value);
//        btSave.setVisible(value);
        btCancel.setVisible(true);
        btUpdate.setVisible(!value);
        btSave.setVisible(value);

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        buttonGroup2 = new javax.swing.ButtonGroup();
        buttonGroup3 = new javax.swing.ButtonGroup();
        jDialog1 = new javax.swing.JDialog();
        jCheckBoxMenuItem1 = new javax.swing.JCheckBoxMenuItem();
        jMenuItem1 = new javax.swing.JMenuItem();
        jRadioButtonMenuItem1 = new javax.swing.JRadioButtonMenuItem();
        jMenu1 = new javax.swing.JMenu();
        jMenuItem2 = new javax.swing.JMenuItem();
        jRadioButtonMenuItem2 = new javax.swing.JRadioButtonMenuItem();
        jPopupMenu1 = new javax.swing.JPopupMenu();
        jMenu2 = new javax.swing.JMenu();
        jCheckBoxMenuItem2 = new javax.swing.JCheckBoxMenuItem();
        btSave = new javax.swing.JButton();
        btCancel = new javax.swing.JButton();
        lblIcon = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        txtMaNV = new javax.swing.JTextField();
        txtSoTK = new javax.swing.JTextField();
        txtMSThue = new javax.swing.JTextField();
        cbQH = new javax.swing.JComboBox<>();
        cbCMNDNoiCap = new javax.swing.JComboBox<>();
        cbCMNDNgQuan = new javax.swing.JComboBox<>();
        cbDanToc = new javax.swing.JComboBox<>();
        cbTonGiao = new javax.swing.JComboBox<>();
        jScrollPane1 = new javax.swing.JScrollPane();
        txtThuongTru = new javax.swing.JTextArea();
        txtDienThoai = new javax.swing.JTextField();
        txtCMND = new javax.swing.JTextField();
        txtHoKhau = new javax.swing.JTextField();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        jLabel20 = new javax.swing.JLabel();
        jPanel1 = new javax.swing.JPanel();
        jLabel26 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        txtDTNChucVu = new javax.swing.JTextField();
        jLabel28 = new javax.swing.JLabel();
        txtDTNNoiSinhHoat = new javax.swing.JTextField();
        txtDTNNgay = new javax.swing.JTextField();
        txtDTNThang = new javax.swing.JTextField();
        txtDTNNam = new javax.swing.JTextField();
        jLabel38 = new javax.swing.JLabel();
        jLabel39 = new javax.swing.JLabel();
        txtHoDem = new javax.swing.JTextField();
        jLabel21 = new javax.swing.JLabel();
        txtTen = new javax.swing.JTextField();
        ckbGioiTinh = new javax.swing.JCheckBox();
        jLabel22 = new javax.swing.JLabel();
        txtTamTru = new javax.swing.JTextField();
        cbNoiSinh = new javax.swing.JComboBox<>();
        cbQuocTich = new javax.swing.JComboBox<>();
        jLabel23 = new javax.swing.JLabel();
        cbTTHN = new javax.swing.JComboBox<>();
        txtDiDong = new javax.swing.JFormattedTextField();
        txtEmail = new javax.swing.JFormattedTextField();
        jLabel24 = new javax.swing.JLabel();
        cbVanHoa = new javax.swing.JComboBox<>();
        cbTrinhDoHocVan = new javax.swing.JComboBox<>();
        jLabel25 = new javax.swing.JLabel();
        jPanel2 = new javax.swing.JPanel();
        jLabel29 = new javax.swing.JLabel();
        jLabel30 = new javax.swing.JLabel();
        txtQDChucVu = new javax.swing.JTextField();
        jLabel31 = new javax.swing.JLabel();
        txtQDNoiSinhHoat = new javax.swing.JTextField();
        txtQDNgay = new javax.swing.JTextField();
        txtQDThang = new javax.swing.JTextField();
        txtQDNam = new javax.swing.JTextField();
        jLabel42 = new javax.swing.JLabel();
        jLabel43 = new javax.swing.JLabel();
        jPanel3 = new javax.swing.JPanel();
        jLabel32 = new javax.swing.JLabel();
        jLabel33 = new javax.swing.JLabel();
        txtDCSChucVu = new javax.swing.JTextField();
        jLabel34 = new javax.swing.JLabel();
        txtDCSNoiSinhHoat = new javax.swing.JTextField();
        txtDCSNgay = new javax.swing.JTextField();
        txtDCSThang = new javax.swing.JTextField();
        txtDCSNam = new javax.swing.JTextField();
        jLabel40 = new javax.swing.JLabel();
        jLabel41 = new javax.swing.JLabel();
        btnDuyet = new javax.swing.JButton();
        txtNgaySinh = new javax.swing.JTextField();
        txtThangSinh = new javax.swing.JTextField();
        txtNamSinh = new javax.swing.JTextField();
        jLabel1 = new javax.swing.JLabel();
        jLabel35 = new javax.swing.JLabel();
        txtNgayCap = new javax.swing.JTextField();
        txtThangCap = new javax.swing.JTextField();
        txtNamCap = new javax.swing.JTextField();
        jLabel36 = new javax.swing.JLabel();
        jLabel37 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        txtGhiChu = new javax.swing.JTextArea();
        btUpdate = new javax.swing.JButton();

        javax.swing.GroupLayout jDialog1Layout = new javax.swing.GroupLayout(jDialog1.getContentPane());
        jDialog1.getContentPane().setLayout(jDialog1Layout);
        jDialog1Layout.setHorizontalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        jDialog1Layout.setVerticalGroup(
            jDialog1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        jCheckBoxMenuItem1.setSelected(true);
        jCheckBoxMenuItem1.setText("jCheckBoxMenuItem1");

        jMenuItem1.setText("jMenuItem1");

        jRadioButtonMenuItem1.setSelected(true);
        jRadioButtonMenuItem1.setText("jRadioButtonMenuItem1");

        jMenu1.setText("jMenu1");

        jMenuItem2.setText("jMenuItem2");

        jRadioButtonMenuItem2.setSelected(true);
        jRadioButtonMenuItem2.setText("jRadioButtonMenuItem2");

        jMenu2.setText("jMenu2");

        jCheckBoxMenuItem2.setSelected(true);
        jCheckBoxMenuItem2.setText("jCheckBoxMenuItem2");

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        btSave.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btSave.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ims/images/addPeople.png"))); // NOI18N
        btSave.setText("Ghi");
        btSave.setPreferredSize(new java.awt.Dimension(75, 23));
        btSave.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btSaveActionPerformed(evt);
            }
        });

        btCancel.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btCancel.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ims/images/clear.png"))); // NOI18N
        btCancel.setText("Hủy");
        btCancel.setPreferredSize(new java.awt.Dimension(75, 23));
        btCancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btCancelActionPerformed(evt);
            }
        });

        lblIcon.setIcon(new javax.swing.ImageIcon("C:\\Users\\ziga0\\Pictures\\icons8-customer-64.png")); // NOI18N

        jLabel2.setText("Mã Nhân Viên:");

        jLabel3.setText("Số tài khoản:");

        jLabel4.setText("Mã Số thuế:");

        jLabel5.setText("Quận Huyện:");

        jLabel6.setText("Điện thoại:");

        jLabel7.setText("CMND/Pasport:");

        jLabel8.setText("Ngày cấp: ");

        jLabel9.setText("Nơi cấp:");

        jLabel10.setText("Nguyên quán:");

        jLabel11.setText("Dân tộc:");

        jLabel12.setText("Tôn giáo:");

        jLabel13.setText("Thưởng trú:");

        jLabel14.setText("Hộ khẩu:");

        txtMaNV.setEditable(false);

        cbCMNDNgQuan.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        cbDanToc.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        cbTonGiao.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        txtThuongTru.setColumns(10);
        txtThuongTru.setRows(5);
        jScrollPane1.setViewportView(txtThuongTru);

        txtHoKhau.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                txtHoKhauActionPerformed(evt);
            }
        });

        jLabel15.setText("Họ và tên đệm:");

        jLabel16.setText("Ngày sinh:");

        jLabel17.setText("Tạm trú:");

        jLabel18.setText("Quốc tịch:");

        jLabel19.setText("Di động:");

        jLabel20.setText("Văn hóa:");

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Đoàn Thanh Niên", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 11), new java.awt.Color(0, 0, 204))); // NOI18N

        jLabel26.setText("Ngày gia Nhập:");

        jLabel27.setText("Chức Vụ:");

        jLabel28.setText("Nơi sinh hoạt");

        jLabel38.setText("/");

        jLabel39.setText("/");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel26)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtDTNNgay, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel38)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtDTNThang, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel39)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtDTNNam, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel27)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtDTNChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, 163, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addComponent(jLabel28)
                        .addGap(18, 18, 18)
                        .addComponent(txtDTNNoiSinhHoat)))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtDTNNgay, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtDTNThang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtDTNNam, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel38)
                        .addComponent(jLabel39))
                    .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel26)
                        .addComponent(jLabel27)
                        .addComponent(txtDTNChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel28)
                    .addComponent(txtDTNNoiSinhHoat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );

        jLabel21.setText("Tên:");

        ckbGioiTinh.setText("Nữ");

        jLabel22.setText("Nơi sinh:");

        cbNoiSinh.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbNoiSinhItemStateChanged(evt);
            }
        });
        cbNoiSinh.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cbNoiSinhActionPerformed(evt);
            }
        });

        cbQuocTich.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Việt Nam" }));

        jLabel23.setText("Tình trạng hôn nhân:");

        cbTTHN.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        jLabel24.setText("Email");

        cbVanHoa.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        cbTrinhDoHocVan.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Item 1", "Item 2", "Item 3", "Item 4" }));

        jLabel25.setText("Trình độ học vấn:");

        jPanel2.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Quân Đội", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 11), new java.awt.Color(0, 0, 204))); // NOI18N

        jLabel29.setText("Ngày gia nhập:");

        jLabel30.setText("Chức vụ:");

        jLabel31.setText("Nơi sinh hoạt:");

        jLabel42.setText("/");

        jLabel43.setText("/");

        javax.swing.GroupLayout jPanel2Layout = new javax.swing.GroupLayout(jPanel2);
        jPanel2.setLayout(jPanel2Layout);
        jPanel2Layout.setHorizontalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel29)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtQDNgay, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel42)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtQDThang, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel43)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtQDNam, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel30)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtQDChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, 163, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(jPanel2Layout.createSequentialGroup()
                        .addComponent(jLabel31)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtQDNoiSinhHoat, javax.swing.GroupLayout.PREFERRED_SIZE, 350, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        jPanel2Layout.setVerticalGroup(
            jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel2Layout.createSequentialGroup()
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtQDNgay, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtQDThang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtQDNam, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel42)
                        .addComponent(jLabel43))
                    .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel29)
                        .addComponent(jLabel30)
                        .addComponent(txtQDChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel2Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel31)
                    .addComponent(txtQDNoiSinhHoat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(0, 19, Short.MAX_VALUE))
        );

        jPanel3.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Đảng cộng sản Việt Nam", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 11), new java.awt.Color(0, 0, 204))); // NOI18N

        jLabel32.setText("Ngày gia nhập:");

        jLabel33.setText("Chức vụ:");

        jLabel34.setText("Nơi sinh hoạt:");

        jLabel40.setText("/");

        jLabel41.setText("/");

        javax.swing.GroupLayout jPanel3Layout = new javax.swing.GroupLayout(jPanel3);
        jPanel3.setLayout(jPanel3Layout);
        jPanel3Layout.setHorizontalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jLabel32)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtDCSNgay, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel40)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtDCSThang, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jLabel41)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtDCSNam, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(jLabel33)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(txtDCSChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, 163, javax.swing.GroupLayout.PREFERRED_SIZE))
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addComponent(jLabel34)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(txtDCSNoiSinhHoat))
        );
        jPanel3Layout.setVerticalGroup(
            jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel3Layout.createSequentialGroup()
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(txtDCSNgay, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtDCSThang, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(txtDCSNam, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel40)
                        .addComponent(jLabel41))
                    .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel32)
                        .addComponent(jLabel33)
                        .addComponent(txtDCSChucVu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel3Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel34)
                    .addComponent(txtDCSNoiSinhHoat, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
        );

        btnDuyet.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ims/images/theme-icon.png"))); // NOI18N
        btnDuyet.setText("Duyệt Ảnh");
        btnDuyet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDuyetActionPerformed(evt);
            }
        });

        jLabel1.setText("/");

        jLabel35.setText("/");

        jLabel36.setText("/");

        jLabel37.setText("/");

        txtGhiChu.setColumns(20);
        txtGhiChu.setRows(5);
        jScrollPane2.setViewportView(txtGhiChu);

        btUpdate.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        btUpdate.setIcon(new javax.swing.ImageIcon(getClass().getResource("/ims/images/editPeople.png"))); // NOI18N
        btUpdate.setText("Câp nhật");
        btUpdate.setPreferredSize(new java.awt.Dimension(75, 23));
        btUpdate.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btUpdateActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnDuyet, javax.swing.GroupLayout.DEFAULT_SIZE, 130, Short.MAX_VALUE)
                    .addComponent(lblIcon, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 0, Short.MAX_VALUE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel14)
                    .addComponent(jLabel12)
                    .addComponent(jLabel13)
                    .addComponent(jLabel9)
                    .addComponent(jLabel10)
                    .addComponent(jLabel11)
                    .addComponent(jLabel8)
                    .addComponent(jLabel6)
                    .addComponent(jLabel7)
                    .addComponent(jLabel2)
                    .addComponent(jLabel3)
                    .addComponent(jLabel4)
                    .addComponent(jLabel5))
                .addGap(73, 73, 73)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addComponent(txtHoKhau)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 156, Short.MAX_VALUE)
                    .addComponent(txtMaNV)
                    .addComponent(txtSoTK)
                    .addComponent(txtMSThue)
                    .addComponent(cbQH, javax.swing.GroupLayout.Alignment.TRAILING, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cbCMNDNoiCap, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cbCMNDNgQuan, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cbDanToc, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cbTonGiao, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(txtDienThoai)
                    .addComponent(txtCMND)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(txtNgayCap, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel36)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(txtThangCap, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel37)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(txtNamCap)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel15)
                            .addComponent(jLabel16)
                            .addComponent(jLabel17)
                            .addComponent(jLabel18)
                            .addComponent(jLabel19)
                            .addComponent(jLabel20))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(txtTamTru)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(cbQuocTich, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(jLabel23)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(cbTTHN, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txtNgaySinh, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(jLabel1)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtThangSinh, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel35)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(txtNamSinh, javax.swing.GroupLayout.PREFERRED_SIZE, 44, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addComponent(txtHoDem))
                                .addGap(31, 31, 31)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel22)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                        .addComponent(cbNoiSinh, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel21)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                        .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, 108, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addGap(18, 18, 18)
                                        .addComponent(ckbGioiTinh))))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(cbVanHoa, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel25))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(txtDiDong, javax.swing.GroupLayout.PREFERRED_SIZE, 103, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jLabel24)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(txtEmail)
                                    .addComponent(cbTrinhDoHocVan, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))))
                    .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(4, 4, 4)
                        .addComponent(btSave, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(btUpdate, javax.swing.GroupLayout.PREFERRED_SIZE, 151, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btCancel, javax.swing.GroupLayout.PREFERRED_SIZE, 127, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(jPanel3, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(jPanel2, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(22, 22, 22))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(lblIcon, javax.swing.GroupLayout.PREFERRED_SIZE, 161, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnDuyet)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 288, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(txtMaNV, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel15)
                    .addComponent(txtHoDem, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel21)
                    .addComponent(txtTen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(ckbGioiTinh))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(txtSoTK, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel16)
                    .addComponent(jLabel22)
                    .addComponent(cbNoiSinh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtNgaySinh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtThangSinh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(txtNamSinh, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel1)
                    .addComponent(jLabel35))
                .addGap(9, 9, 9)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(txtMSThue, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel17)
                    .addComponent(txtTamTru, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel5)
                    .addComponent(cbQH, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel18)
                    .addComponent(cbQuocTich, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel23)
                    .addComponent(cbTTHN, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel6)
                    .addComponent(txtDienThoai, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel19)
                    .addComponent(txtDiDong, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel24)
                    .addComponent(txtEmail, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(jLabel7)
                        .addComponent(jLabel20)
                        .addComponent(cbVanHoa, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(jLabel25)
                        .addComponent(cbTrinhDoHocVan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addComponent(txtCMND, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(15, 15, 15)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jPanel3, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jPanel2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE, false)
                            .addComponent(btUpdate, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                            .addComponent(btSave, javax.swing.GroupLayout.DEFAULT_SIZE, 57, Short.MAX_VALUE)
                            .addComponent(btCancel, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                        .addContainerGap(35, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(txtNgayCap, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(txtThangCap, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(txtNamCap, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jLabel36)
                                .addComponent(jLabel37))
                            .addComponent(jLabel8))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel9)
                            .addComponent(cbCMNDNoiCap, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel10)
                            .addComponent(cbCMNDNgQuan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel11)
                            .addComponent(cbDanToc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 23, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(cbTonGiao, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel12))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jLabel13)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel14)
                            .addComponent(txtHoKhau, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(77, 77, 77))))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

//    sự kiên nhấn nút save
    private void btSaveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btSaveActionPerformed
        try {
//            Class.forName("com.mysql.jdbc.Driver");
//            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/exe08", "root", "12345678x@X");
//            PreparedStatement ps = con.prepareStatement("INSERT INTO `nhanvien`(`MaNV`, `img`, `HoDem`, `Ten`, `GioiTinh`, `STK`, `NgaySinh`, `NoiSinh`, `MST`, `TamTru`, `QuanHuyen`, `QuocTich`, `TTHonNhan`, `DienThoai`, `DiDong`, `Email`, `CMND`, `VanHoa`, `TrinhDoHV`, `NgayCap`, `NoiCap`, `NguyenQuan`, `DanToc`, `TonGiao`, `ThuongTru`, `HoKhau`) VALUES (1,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
//            InputStream is = new FileInputStream(new File(linkImage));
//            ps.setBlob(1, is);
//            ps.setString(2, "1");
//            ps.setString(3, "1");
//            ps.setBoolean(4, true);
//            ps.setString(5, "1");
//            ps.setDate(6, new Date(97,01,24));
//            ps.setString(7, "1");
//            ps.setString(8, "1");
//            ps.setString(9, "1");
//            ps.setString(10, "1");
//            ps.setString(11, "1");
//            ps.setString(12, "1");
//            ps.setString(13, "1");
//            ps.setString(14, "1");
//            ps.setString(15, "1");
//            ps.setString(16, "1");
//            ps.setString(17, "1");
//            ps.setString(18, "1");
//            ps.setDate(19, new Date(97,01,24));
//            ps.setString(20, "1");
//            ps.setString(21, "1");
//            ps.setInt(22, 1);
//            ps.setString(23, "1");
//            ps.setString(24, "1");
//            ps.setString(25, "1");
//            ps.executeUpdate();

            MyEmployee epl = new MyEmployee();
            Team dcs = new Team();
            Team dtn = new Team();
            Team qd = new Team();
//            insert Nhan Vien
            insertToDB(epl);
//            insert DCS
            if (!"".equals(txtDCSChucVu.getText()) || !"".equals(txtDCSNoiSinhHoat.getText())) {
                insertDCS(dcs);
            }

//          insert Doan thanh nien
            if (!"".equals(txtDTNChucVu.getText()) || !"".equals(txtDTNNoiSinhHoat.getText())) {
                insertDTN(dtn);
            }
            //          insert quan doi
            if (!"".equals(txtQDChucVu.getText()) || !"".equals(txtQDNoiSinhHoat.getText())) {
                insertQD(qd);
            }
            JOptionPane.showMessageDialog(null, "Thêm thành công");
            dispose();
        } catch (NullPointerException ex) {
            JOptionPane.showMessageDialog(null, "Chưa nhập hình", "Error", JOptionPane.ERROR_MESSAGE);
            ex.printStackTrace();
        }


    }//GEN-LAST:event_btSaveActionPerformed

    private void btCancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btCancelActionPerformed
//        stateButton(true);
//lấy ảnh từ db
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/exe08", "root", "12345678x@X");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM `nhanvien`");
            if (rs.next()) {
                byte[] img = rs.getBytes("img");

                //Resize The ImageIcon
                ImageIcon image = new ImageIcon(img);
                Image im = image.getImage();
                Image myImg = im.getScaledInstance(lblIcon.getWidth(), lblIcon.getHeight(), Image.SCALE_SMOOTH);
                ImageIcon newImage = new ImageIcon(myImg);
                lblIcon.setIcon(newImage);
            } else {
                JOptionPane.showMessageDialog(null, "No Data");
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }//GEN-LAST:event_btCancelActionPerformed

    //Methode To Resize The ImageIcon
    public ImageIcon ResizeImage(String imgPath) {
        ImageIcon MyImage = new ImageIcon(imgPath);
        Image img = MyImage.getImage();
        Image newImage = img.getScaledInstance(lblIcon.getWidth(), lblIcon.getHeight(), Image.SCALE_SMOOTH);
        ImageIcon image = new ImageIcon(newImage);
        return image;
    }
//    lấy ảnh từ local hiện lên label
    private void btnDuyetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDuyetActionPerformed
        JFileChooser fileChooser = new JFileChooser();
        fileChooser.setCurrentDirectory(new File(System.getProperty("user.home")));
        FileNameExtensionFilter filter = new FileNameExtensionFilter("*.IMAGE", "jpg", "gif", "png");
        fileChooser.addChoosableFileFilter(filter);
        int result = fileChooser.showSaveDialog(null);
        if (result == JFileChooser.APPROVE_OPTION) {
            File selectedFile = fileChooser.getSelectedFile();
            String path = selectedFile.getAbsolutePath();
            lblIcon.setIcon(ResizeImage(path));
            linkImage = path;
        } else if (result == JFileChooser.CANCEL_OPTION) {
            System.out.println("No Data");
        }
    }//GEN-LAST:event_btnDuyetActionPerformed

//    fill combobox tỉnh thành
    public void fillCBTinhThanh() {
        ResultSet rs = bll.getTinhThanh();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("matp"), rs.getString("name"));
                modelTinhThanh.addElement(item);
                cbNoiSinh.setModel(modelTinhThanh);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //    fill combobox quận huyện
    public void fillCBQuanHuyen(String idTinhThanh) {
        ResultSet rs = bll.getQuanHuyen(idTinhThanh);
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("maqh"), rs.getString("name"));
                modelQuanHuyen.addElement(item);
                cbQH.setModel(modelQuanHuyen);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
//    fill combobox dân tộc

    public void fillCBDanToc() {

        ResultSet rs = bll.getDanToc();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("MaDT"), rs.getString("TenDT"));
                modelDanToc.addElement(item);
                cbDanToc.setModel(modelDanToc);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //    fill combobox nguyên quán
    public void fillCBNguyenQuan() {
        ResultSet rs = bll.getTinhThanh();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("matp"), rs.getString("name"));
                modelNguyenQuan.addElement(item);
                cbCMNDNgQuan.setModel(modelNguyenQuan);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    //    fill combobox nơi cấp

    public void fillCBNoiCap() {
        ResultSet rs = bll.getTinhThanh();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("matp"), rs.getString("name"));
                modelNoiCap.addElement(item);
                cbCMNDNoiCap.setModel(modelNoiCap);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    //    fill combobox tôn giáo
    public void fillCBTonGiao() {

        ResultSet rs = bll.getTonGiao();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("matg"), rs.getString("tentg"));
                modelTonGiao.addElement(item);
                cbTonGiao.setModel(modelTonGiao);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void fillCBTringDoHV() {

        ResultSet rs = bll.getTrinhDoHV();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("matdhv"), rs.getString("tentdhv"));
                modelTrinhDoHV.addElement(item);
                cbTrinhDoHocVan.setModel(modelTrinhDoHV);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void fillCBTinhTrangHN() {

        ResultSet rs = bll.getTinhTrangHN();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("mahn"), rs.getString("tentthn"));
                modelTTHN.addElement(item);
                cbTTHN.setModel(modelTTHN);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void fillCBVanHoa() {

        ResultSet rs = bll.getVanHoa();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("mavh"), rs.getString("tenvh"));
                modelVanHoa.addElement(item);
                cbVanHoa.setModel(modelVanHoa);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void fillCBQuocTich() {
        ResultSet rs = bll.getQuocTich();
        try {
            while (rs.next()) {
                cbItem item = new cbItem(rs.getString("maqt"), rs.getString("tenqt"));
                modelQuocTich.addElement(item);
                cbQuocTich.setModel(modelQuocTich);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void updateDB(MyEmployee epl) {
        epl.setMaNV(Integer.parseInt(txtMaNV.getText()));
        epl.setImg(linkImage);
        epl.setHoDem(txtHoDem.getText());
        epl.setTen(txtTen.getText());
        epl.setGioiTinh(ckbGioiTinh.isSelected());
        epl.setSTK(txtSoTK.getText());
        epl.setNgaySinh(Integer.parseInt(txtNgaySinh.getText()));
        epl.setThangSinh(Integer.parseInt(txtThangSinh.getText()));
        epl.setNamSinh(Integer.parseInt(txtNamSinh.getText()));
        epl.setNoiSinh(((cbItem) cbNoiSinh.getSelectedItem()).getId());
        epl.setMST(txtMSThue.getText());
        epl.setTamTru(txtTamTru.getText());
        epl.setQuanHuyen(((cbItem) cbQH.getSelectedItem()).getId());
        epl.setQuocTich(((cbItem) cbQuocTich.getSelectedItem()).getId());
        epl.setTTHonNhan(((cbItem) cbTTHN.getSelectedItem()).getId());
        epl.setDienThoai(txtDienThoai.getText());
        epl.setDiDong(txtDiDong.getText());
        epl.setEmail(txtEmail.getText());
        epl.setCMND(txtCMND.getText());
        epl.setVanHoa(((cbItem) cbVanHoa.getSelectedItem()).getId());
        epl.setTrinhDoHV(((cbItem) cbTrinhDoHocVan.getSelectedItem()).getId());
        epl.setNgayCap(Integer.parseInt(txtNgayCap.getText()));
        epl.setThangCap(Integer.parseInt(txtThangCap.getText()));
        epl.setNamCap(Integer.parseInt(txtNamCap.getText()));
        epl.setNoiCap(((cbItem) cbCMNDNoiCap.getSelectedItem()).getId());
        epl.setNguyenQuan(((cbItem) cbCMNDNgQuan.getSelectedItem()).getId());
        epl.setDanToc(Integer.parseInt(((cbItem) cbDanToc.getSelectedItem()).getId()));
        epl.setTonGiao(((cbItem) cbTonGiao.getSelectedItem()).getId());
        epl.setThuongTru(txtThuongTru.getText());
        epl.setHoKhau(txtHoKhau.getText());
        epl.setGhiChu(txtGhiChu.getText());
        //update to db
        bll.update(epl);
    }
//    ============================================== Dang Cong San

    public void insertDCS(Team dcs) {
        dcs.setMaNV(Integer.parseInt(txtMaNV.getText()));
        dcs.setChucVu(txtDCSChucVu.getText());
        dcs.setNoiSinhHoat(txtDCSNoiSinhHoat.getText());
        dcs.setNamGiaNhap(Integer.parseInt(txtDCSNam.getText()));
        dcs.setThangGiaNhap(Integer.parseInt(txtDCSThang.getText()));
        dcs.setNgayGiaNhap(Integer.parseInt(txtDCSNgay.getText()));
        bll.addDCS(dcs);
    }

    public void updateDCS(Team dcs) {
        dcs.setMaNV(Integer.parseInt(txtMaNV.getText()));
        dcs.setChucVu(txtDCSChucVu.getText());
        dcs.setNoiSinhHoat(txtDCSNoiSinhHoat.getText());
        dcs.setNamGiaNhap(Integer.parseInt(txtDCSNam.getText()));
        dcs.setThangGiaNhap(Integer.parseInt(txtDCSThang.getText()));
        dcs.setNgayGiaNhap(Integer.parseInt(txtDCSNgay.getText()));
        //update to db
        bll.updateDCS(dcs);
    }
//    ================================================= Doan thanh nien

    public void insertDTN(Team dtn) {
        dtn.setMaNV(Integer.parseInt(txtMaNV.getText()));
        dtn.setChucVu(txtDTNChucVu.getText());
        dtn.setNoiSinhHoat(txtDTNNoiSinhHoat.getText());
        dtn.setNamGiaNhap(Integer.parseInt(txtDTNNam.getText()));
        dtn.setThangGiaNhap(Integer.parseInt(txtDTNThang.getText()));
        dtn.setNgayGiaNhap(Integer.parseInt(txtDTNNgay.getText()));
        bll.addDTN(dtn);
    }

    public void updateDTN(Team dtn) {
        dtn.setMaNV(Integer.parseInt(txtMaNV.getText()));
        dtn.setChucVu(txtDTNChucVu.getText());
        dtn.setNoiSinhHoat(txtDTNNoiSinhHoat.getText());
        dtn.setNamGiaNhap(Integer.parseInt(txtDTNNam.getText()));
        dtn.setThangGiaNhap(Integer.parseInt(txtDTNThang.getText()));
        dtn.setNgayGiaNhap(Integer.parseInt(txtDTNNgay.getText()));
        //update to db
        bll.updateDTN(dtn);
    }
//  Quan Doi

    public void insertQD(Team qd) {
        qd.setMaNV(Integer.parseInt(txtMaNV.getText()));
        qd.setChucVu(txtQDChucVu.getText());
        qd.setNoiSinhHoat(txtQDNoiSinhHoat.getText());
        qd.setNamGiaNhap(Integer.parseInt(txtQDNam.getText()));
        qd.setThangGiaNhap(Integer.parseInt(txtQDThang.getText()));
        qd.setNgayGiaNhap(Integer.parseInt(txtQDNgay.getText()));
        bll.addQD(qd);
    }

    public void updateQD(Team qd) {
        qd.setMaNV(Integer.parseInt(txtMaNV.getText()));
        qd.setChucVu(txtQDChucVu.getText());
        qd.setNoiSinhHoat(txtQDNoiSinhHoat.getText());
        qd.setNamGiaNhap(Integer.parseInt(txtQDNam.getText()));
        qd.setThangGiaNhap(Integer.parseInt(txtQDThang.getText()));
        qd.setNgayGiaNhap(Integer.parseInt(txtQDNgay.getText()));
        //update to db
        bll.updateQD(qd);
    }
//    =================================================== Nhan Vien

    public void insertToDB(MyEmployee epl) {
        epl.setMaNV(Integer.parseInt(txtMaNV.getText()));
        epl.setImg(linkImage);
        epl.setHoDem(txtHoDem.getText());
        epl.setTen(txtTen.getText());
        epl.setGioiTinh(ckbGioiTinh.isSelected());
        epl.setSTK(txtSoTK.getText());
        epl.setNgaySinh(Integer.parseInt(txtNgaySinh.getText()));
        epl.setThangSinh(Integer.parseInt(txtThangSinh.getText()));
        epl.setNamSinh(Integer.parseInt(txtNamSinh.getText()));
        epl.setNoiSinh(((cbItem) cbNoiSinh.getSelectedItem()).getId());
        epl.setMST(txtMSThue.getText());
        epl.setTamTru(txtTamTru.getText());
        epl.setQuanHuyen(((cbItem) cbQH.getSelectedItem()).getId());
        epl.setQuocTich(((cbItem) cbQuocTich.getSelectedItem()).getId());
        epl.setTTHonNhan(((cbItem) cbTTHN.getSelectedItem()).getId());
        epl.setDienThoai(txtDienThoai.getText());
        epl.setDiDong(txtDiDong.getText());
        epl.setEmail(txtEmail.getText());
        epl.setCMND(txtCMND.getText());
        epl.setVanHoa(((cbItem) cbVanHoa.getSelectedItem()).getId());
        epl.setTrinhDoHV(((cbItem) cbTrinhDoHocVan.getSelectedItem()).getId());
        epl.setNgayCap(Integer.parseInt(txtNgayCap.getText()));
        epl.setThangCap(Integer.parseInt(txtThangCap.getText()));
        epl.setNamCap(Integer.parseInt(txtNamCap.getText()));
        epl.setNoiCap(((cbItem) cbCMNDNoiCap.getSelectedItem()).getId());
        epl.setNguyenQuan(((cbItem) cbCMNDNgQuan.getSelectedItem()).getId());
        epl.setDanToc(Integer.parseInt(((cbItem) cbDanToc.getSelectedItem()).getId()));
        epl.setTonGiao(((cbItem) cbTonGiao.getSelectedItem()).getId());
        epl.setThuongTru(txtThuongTru.getText());
        epl.setHoKhau(txtHoKhau.getText());
        epl.setGhiChu(txtGhiChu.getText());
//        insert to db
        bll.addNew(epl);
//        insert to array
        eplList.listEmployee.add(epl);

    }

    public void validation() {
        // Tao mot doi tuong Pattern
        Pattern r = Pattern.compile("^[a-z0-9_-]{3,16}$");
        // Tao doi tuong matcher.
        Matcher m = r.matcher(txtTen.getText());
        if (m.find()) {
            System.out.println(m.group(0));
            throw new NullPointerException("Nhap sai");
        }
    }

    public int randomMaNV() {
        Integer[] arr = new Integer[1000];
        for (int i = 0; i < arr.length; i++) {
            arr[i] = i;
        }
        Collections.shuffle(Arrays.asList(arr));
        return arr[24];

    }
    private void txtHoKhauActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_txtHoKhauActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_txtHoKhauActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
//       load combobox tinh thanh
//        fillCBTinhThanh();
//        fillCBDanToc();
//        fillCBNguyenQuan();
//        fillCBTonGiao();
//        fillCBQuanHuyen("1");
//        fillCBQuocTich();
//        fillCBTinhTrangHN();
//        fillCBTringDoHV();
//        fillCBVanHoa();
//        fillCBNoiCap();

    }//GEN-LAST:event_formWindowOpened

    private void cbNoiSinhItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbNoiSinhItemStateChanged
        String idTinhThanh = ((cbItem) cbNoiSinh.getSelectedItem()).getId();
        cbQH.removeAllItems();
        fillCBQuanHuyen(idTinhThanh);


    }//GEN-LAST:event_cbNoiSinhItemStateChanged

    private void cbNoiSinhActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cbNoiSinhActionPerformed
//        String idTinhThanh = ((cbItem) cbNoiSinh.getSelectedItem()).getId();
//        ResultSet rs = bll.getQuanHuyen(idTinhThanh);
//        try {
//            while (rs.next()) {
//                cbQH.addItem(rs.getString("name"));
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(Employee.class.getName()).log(Level.SEVERE, null, ex);
//        }
    }//GEN-LAST:event_cbNoiSinhActionPerformed

    private void btUpdateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btUpdateActionPerformed
        MyEmployee epl = new MyEmployee();
        Team dcs = new Team();
        Team dtn = new Team();
        Team qd = new Team();
//        update nhan vien
        try {
            updateDB(epl);
        } catch (Exception e) {
            e.printStackTrace();
        }
//        update DCS
        if (haveDCS) {
            try {
                updateDCS(dcs);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (!"".equals(txtDCSChucVu.getText()) || !"".equals(txtDCSNoiSinhHoat.getText())) {
                insertDCS(dcs);
            }
        }
//        update doan thanh nien
        if (haveDTN) {
            try {
                updateDTN(dtn);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (!"".equals(txtDTNChucVu.getText()) || !"".equals(txtDTNNoiSinhHoat.getText())) {
                insertDTN(dtn);
            }

        }
//        update quan doi
        if (haveQD) {
            try {
                updateQD(qd);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            if (!"".equals(txtQDChucVu.getText()) || !"".equals(txtQDNoiSinhHoat.getText())) {
                insertQD(qd);
            }

        }

        JOptionPane.showMessageDialog(null, "Cập nhật thành công");
    }//GEN-LAST:event_btUpdateActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Employee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Employee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Employee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Employee.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Employee().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btCancel;
    private javax.swing.JButton btSave;
    private javax.swing.JButton btUpdate;
    private javax.swing.JButton btnDuyet;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.ButtonGroup buttonGroup2;
    private javax.swing.ButtonGroup buttonGroup3;
    private javax.swing.JComboBox<String> cbCMNDNgQuan;
    private javax.swing.JComboBox<String> cbCMNDNoiCap;
    private javax.swing.JComboBox<String> cbDanToc;
    private javax.swing.JComboBox<String> cbNoiSinh;
    private javax.swing.JComboBox<String> cbQH;
    private javax.swing.JComboBox<String> cbQuocTich;
    private javax.swing.JComboBox<String> cbTTHN;
    private javax.swing.JComboBox<String> cbTonGiao;
    private javax.swing.JComboBox<String> cbTrinhDoHocVan;
    private javax.swing.JComboBox<String> cbVanHoa;
    private javax.swing.JCheckBox ckbGioiTinh;
    private javax.swing.JCheckBoxMenuItem jCheckBoxMenuItem1;
    private javax.swing.JCheckBoxMenuItem jCheckBoxMenuItem2;
    private javax.swing.JDialog jDialog1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel28;
    private javax.swing.JLabel jLabel29;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel30;
    private javax.swing.JLabel jLabel31;
    private javax.swing.JLabel jLabel32;
    private javax.swing.JLabel jLabel33;
    private javax.swing.JLabel jLabel34;
    private javax.swing.JLabel jLabel35;
    private javax.swing.JLabel jLabel36;
    private javax.swing.JLabel jLabel37;
    private javax.swing.JLabel jLabel38;
    private javax.swing.JLabel jLabel39;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel40;
    private javax.swing.JLabel jLabel41;
    private javax.swing.JLabel jLabel42;
    private javax.swing.JLabel jLabel43;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JMenu jMenu1;
    private javax.swing.JMenu jMenu2;
    private javax.swing.JMenuItem jMenuItem1;
    private javax.swing.JMenuItem jMenuItem2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JPanel jPanel3;
    private javax.swing.JPopupMenu jPopupMenu1;
    private javax.swing.JRadioButtonMenuItem jRadioButtonMenuItem1;
    private javax.swing.JRadioButtonMenuItem jRadioButtonMenuItem2;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblIcon;
    private javax.swing.JTextField txtCMND;
    private javax.swing.JTextField txtDCSChucVu;
    private javax.swing.JTextField txtDCSNam;
    private javax.swing.JTextField txtDCSNgay;
    private javax.swing.JTextField txtDCSNoiSinhHoat;
    private javax.swing.JTextField txtDCSThang;
    private javax.swing.JTextField txtDTNChucVu;
    private javax.swing.JTextField txtDTNNam;
    private javax.swing.JTextField txtDTNNgay;
    private javax.swing.JTextField txtDTNNoiSinhHoat;
    private javax.swing.JTextField txtDTNThang;
    private javax.swing.JFormattedTextField txtDiDong;
    private javax.swing.JTextField txtDienThoai;
    private javax.swing.JFormattedTextField txtEmail;
    private javax.swing.JTextArea txtGhiChu;
    private javax.swing.JTextField txtHoDem;
    private javax.swing.JTextField txtHoKhau;
    private javax.swing.JTextField txtMSThue;
    private javax.swing.JTextField txtMaNV;
    private javax.swing.JTextField txtNamCap;
    private javax.swing.JTextField txtNamSinh;
    private javax.swing.JTextField txtNgayCap;
    private javax.swing.JTextField txtNgaySinh;
    private javax.swing.JTextField txtQDChucVu;
    private javax.swing.JTextField txtQDNam;
    private javax.swing.JTextField txtQDNgay;
    private javax.swing.JTextField txtQDNoiSinhHoat;
    private javax.swing.JTextField txtQDThang;
    private javax.swing.JTextField txtSoTK;
    private javax.swing.JTextField txtTamTru;
    private javax.swing.JTextField txtTen;
    private javax.swing.JTextField txtThangCap;
    private javax.swing.JTextField txtThangSinh;
    private javax.swing.JTextArea txtThuongTru;
    // End of variables declaration//GEN-END:variables
}
