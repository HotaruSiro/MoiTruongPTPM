/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ims.bll;

import ims.MyEmployee;
import ims.MyEmployeeList;
import ims.Team;
import ims.cbItem;
import ims.dal.EmployeeDAL;
import java.sql.*;
import java.util.Calendar;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

/**
 *
 * @author ziga0
 */
public class EmployeeBLL {

    EmployeeDAL dal = new EmployeeDAL();

    public byte[] getImageFromDB() {
        if (dal.getImageFromDB() != null) {
            return dal.getImageFromDB();
        } else {
            JOptionPane.showMessageDialog(null, "Không thấy ảnh");
            throw new NumberFormatException("Không thấy ảnh");
        }
    }

    public ResultSet getTinhThanh() {
        if (dal.getTinhThanh() != null) {
            return dal.getTinhThanh();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được tỉnh thành");
            throw new ArithmeticException("Không fetch được tỉnh thành");
        }
    }

    public ResultSet getQuanHuyen(String idTinhThanh) {
        if (dal.getQuanHuyen(idTinhThanh) != null) {
            return dal.getQuanHuyen(idTinhThanh);
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được quận huyện");
            throw new ArithmeticException("Không fetch được tỉnh thành");
        }
    }

    public ResultSet getDanToc() {
        if (dal.getDanToc() != null) {
            return dal.getDanToc();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được dân tộc");
            throw new ArithmeticException("Không fetch được dân tộc");
        }
    }

    public ResultSet getTonGiao() {
        if (dal.getTonGiao() != null) {
            return dal.getTonGiao();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được tôn giáo");
            throw new ArithmeticException("Không fetch được tôn giáo");
        }
    }

    public ResultSet getTrinhDoHV() {
        if (dal.getTrinhDoHV() != null) {
            return dal.getTrinhDoHV();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được tôn giáo");
            throw new ArithmeticException("Không fetch được tôn giáo");
        }
    }
    
    public ResultSet getTinhTrangHN() {
        if (dal.getTinhTranhHN() != null) {
            return dal.getTinhTranhHN();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được tôn giáo");
            throw new ArithmeticException("Không fetch được tôn giáo");
        }
    }

    public ResultSet getVanHoa() {
        if (dal.getVanHoa() != null) {
            return dal.getVanHoa();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được tôn giáo");
            throw new ArithmeticException("Không fetch được tôn giáo");
        }
    }

    public ResultSet getQuocTich() {
        if (dal.getQuocTich() != null) {
            return dal.getQuocTich();
        } else {
            JOptionPane.showMessageDialog(null, "Không fetch được tôn giáo");
            throw new ArithmeticException("Không fetch được tôn giáo");
        }
    }

    public void addNew(MyEmployee epl) {
        try {
            dal.addNew(epl);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }

    }

    public void update(MyEmployee epl) {
        try {
            dal.update(epl);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }

    }

    public void delete(MyEmployee epl) {
        try {
            dal.delete(epl);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }

    }

    public MyEmployeeList readEmployeeList() {
        ResultSet rs = dal.readEmployee();
        MyEmployeeList list = new MyEmployeeList();
        try {
            while (rs.next()) {
                Date NgaySinh = rs.getDate("NgaySinh");
                int ngaysinh = NgaySinh.getDay();
                int thangsinh = NgaySinh.getMonth();
                int namsinh = NgaySinh.getYear();

                Date NgayCap = rs.getDate("NgayCap");
                int ngaycap = NgayCap.getDay();
                int thangcap = NgayCap.getMonth();
                int namcap = NgayCap.getYear();
//                =======================
                MyEmployee epl = new MyEmployee();
                epl.setMaNV(rs.getInt("MaNV"));
//                epl.setImg(linkImage);
                epl.setImgByte(rs.getBytes("img"));
                epl.setHoDem(rs.getString("HoDem"));
                epl.setTen(rs.getString("Ten"));
                epl.setGioiTinh(rs.getBoolean("GioiTinh"));
                epl.setSTK(rs.getString("STK"));
                epl.setNgaySinh(ngaysinh);
                epl.setThangSinh(thangsinh);
                epl.setNamSinh(namsinh);
                epl.setNoiSinh(rs.getString("NoiSinh"));
                epl.setMST(rs.getString("MST"));
                epl.setTamTru(rs.getString("TamTru"));
                epl.setQuanHuyen(rs.getString("QuanHuyen"));
                epl.setQuocTich(rs.getString("QuocTich"));
                epl.setTTHonNhan(rs.getString("TTHonNhan"));
                epl.setDienThoai(rs.getString("DienThoai"));
                epl.setDiDong(rs.getString("DiDong"));
                epl.setEmail(rs.getString("Email"));
                epl.setCMND(rs.getString("CMND"));
                epl.setVanHoa(rs.getString("VanHoa"));
                epl.setTrinhDoHV(rs.getString("TrinhDoHV"));
                epl.setNgayCap(ngaycap);
                epl.setThangCap(thangcap);
                epl.setNamCap(namcap);
                epl.setNoiCap(rs.getString("NoiCap"));
                epl.setNguyenQuan(rs.getString("NguyenQuan"));
                epl.setDanToc(rs.getInt("DanToc"));
                epl.setTonGiao(rs.getString("TonGiao"));
                epl.setThuongTru(rs.getString("ThuongTru"));
                epl.setHoKhau(rs.getString("HoKhau"));
                epl.setGhiChu(rs.getString("GhiChu"));

                list.listEmployee.add(epl);
            }
            return list;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NumberFormatException ex) {
            JOptionPane.showMessageDialog(null, "Không thấy ảnh");
            ex.printStackTrace();
        }
        return null;
    }
//  Dang cong san

    public void addDCS(Team dcs) {
        try {
            dal.addDCS(dcs);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }

    public Team readDCS(int MaNV) {
        ResultSet rs = dal.readDCS(MaNV);
        Team dcs = new Team();

        try {
            if (!rs.isBeforeFirst()) {
                System.out.println("Không có dữ liệu đảng cộng sản");
                return null;
            }
            while (rs.next()) {
                Date NgayGiaNhap = rs.getDate("NgayGiaNhap");
                int ngayGN = NgayGiaNhap.getDay();
                int thangGN = NgayGiaNhap.getMonth();
                int namGN = NgayGiaNhap.getYear();

                dcs.setChucVu(rs.getString("ChucVu"));
                dcs.setNoiSinhHoat(rs.getString("NoiSinhHoat"));
                dcs.setNamGiaNhap(namGN);
                dcs.setThangGiaNhap(thangGN);
                dcs.setNgayGiaNhap(ngayGN);
            }
            return dcs;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public void updateDCS(Team dcs) {
        try {
            dal.updateDCS(dcs);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }

    public void deleteDCS(int MaNV) {
        try {
            dal.deleteDCS(MaNV);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }
//    Doan thanh nien

    public void addDTN(Team dtn) {
        try {
            dal.addDTN(dtn);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Team readDTN(int MaNV) {
        ResultSet rs = dal.readDTN(MaNV);
        Team dtn = new Team();

        try {
            if (!rs.isBeforeFirst()) {
                System.out.println("Không có dữ liệu đoàn thanh niên");
                return null;
            }
            while (rs.next()) {
                Date NgayGiaNhap = rs.getDate("NgayGiaNhap");
                int ngayGN = NgayGiaNhap.getDay();
                int thangGN = NgayGiaNhap.getMonth();
                int namGN = NgayGiaNhap.getYear();

                dtn.setChucVu(rs.getString("ChucVu"));
                dtn.setNoiSinhHoat(rs.getString("NoiSinhHoat"));
                dtn.setNamGiaNhap(namGN);
                dtn.setThangGiaNhap(thangGN);
                dtn.setNgayGiaNhap(ngayGN);
            }
            return dtn;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public void updateDTN(Team dtn) {
        try {
            dal.updateDTN(dtn);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }

    public void deleteDTN(int MaNV) {
        try {
            dal.deleteDTN(MaNV);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }
//    quan doi

    public void addQD(Team qd) {
        try {
            dal.addQD(qd);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public Team readQD(int MaNV) {
        ResultSet rs = dal.readQD(MaNV);
        Team qd = new Team();

        try {
            if (!rs.isBeforeFirst()) {
                System.out.println("Không có dữ liệu quân đội");
                return null;
            }
            while (rs.next()) {
                Date NgayGiaNhap = rs.getDate("NgayGiaNhap");
                int ngayGN = NgayGiaNhap.getDay();
                int thangGN = NgayGiaNhap.getMonth();
                int namGN = NgayGiaNhap.getYear();

                qd.setChucVu(rs.getString("ChucVu"));
                qd.setNoiSinhHoat(rs.getString("NoiSinhHoat"));
                qd.setNamGiaNhap(namGN);
                qd.setThangGiaNhap(thangGN);
                qd.setNgayGiaNhap(ngayGN);
            }
            return qd;
        } catch (SQLException ex) {
            ex.printStackTrace();
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
        }
        return null;
    }

    public void updateQD(Team qd) {
        try {
            dal.updateQD(qd);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }

    public void deleteQD(int MaNV) {
        try {
            dal.deleteQD(MaNV);
        } catch (Exception e) {
            e.printStackTrace();
            throw new NumberFormatException("Nhập liệu sai");
        }
    }
}
