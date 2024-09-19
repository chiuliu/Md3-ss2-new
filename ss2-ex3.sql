create database ss2_ex3;
use ss2_ex3;

CREATE TABLE phieuxuat (
    soPx INT AUTO_INCREMENT PRIMARY KEY,
    ngayxuat DATETIME
);

CREATE TABLE phieunhap (
    soPn INT AUTO_INCREMENT PRIMARY KEY,
    ngaynhap DATETIME
);

CREATE TABLE vattu (
    mavt INT AUTO_INCREMENT PRIMARY KEY,
    tenvt VARCHAR(255)
);

CREATE TABLE phieuxuatchitiet (
    sopx INT, 
    FOREIGN KEY (sopx) REFERENCES phieuxuat (sopx),
    mavt INT,
    FOREIGN KEY (mavt) REFERENCES vattu (mavt),
    dongiaxuat DOUBLE,
    soluongxuat INT
);

CREATE TABLE phieunhapchitiet (
    sopn INT,
    FOREIGN KEY (sopn) REFERENCES phieunhap (sopn),
    mavt INT,
    FOREIGN KEY (mavt) REFERENCES vattu (mavt),
    dongianhap DOUBLE,
    soluongnhap INT
);

CREATE TABLE nhacungcap (
    mancc INT AUTO_INCREMENT PRIMARY KEY,
    tenncc VARCHAR(255),
    diachi VARCHAR(255),
    sodienthoai VARCHAR(11)
);

CREATE TABLE dondathang (
    soDH INT AUTO_INCREMENT PRIMARY KEY,
    maNCC INT,
    FOREIGN KEY (mancc) REFERENCES nhacungcap (mancc),
    ngaydh DATETIME
);

CREATE TABLE chitietdonhang (
    mavt INT,
    sodonhang INT,
    PRIMARY KEY (mavt , sodonhang),
    FOREIGN KEY (mavt)
        REFERENCES vattu (mavt),
    FOREIGN KEY (sodonhang)
        REFERENCES dondathang (soDH)
);