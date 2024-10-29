

CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4322 DEFAULT CHARSET=latin1;

INSERT INTO admin VALUES("1","admin","$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626");
INSERT INTO admin VALUES("1234","ranu","ranu");
INSERT INTO admin VALUES("4321","unar","unar");



CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

INSERT INTO bom_produk VALUES("B0006","M0004","P0006","Roti Baguette","1");
INSERT INTO bom_produk VALUES("B0006","M0003","P0006","Roti Baguette","1");
INSERT INTO bom_produk VALUES("B0005","","P0005","Roti Gandum","");
INSERT INTO bom_produk VALUES("B0006","M0002","P0006","Roti Baguette","1");
INSERT INTO bom_produk VALUES("B0005","M0004","P0005","Roti Gandum","1");
INSERT INTO bom_produk VALUES("B0005","M0005","P0005","Roti Gandum","1");
INSERT INTO bom_produk VALUES("B0006","M0001","P0006","Roti Baguette","1");
INSERT INTO bom_produk VALUES("B0006","M0006","P0006","Roti Baguette","1");
INSERT INTO bom_produk VALUES("B0006","M0005","P0006","Roti Baguette","1");
INSERT INTO bom_produk VALUES("B0005","M0002","P0005","Roti Gandum","1");
INSERT INTO bom_produk VALUES("B0005","M0001","P0005","Roti Gandum","1");
INSERT INTO bom_produk VALUES("B0004","M0007","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0004","M0006","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0004","M0005","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0004","M0004","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0004","M0003","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0004","M0002","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0004","M0001","P0004","Roti Sobek","1");
INSERT INTO bom_produk VALUES("B0003","M0007","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0003","M0006","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0003","M0005","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0003","M0004","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0003","M0003","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0003","M0002","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0003","M0001","P0003","Roti Pretzel","1");
INSERT INTO bom_produk VALUES("B0002","M0006","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0002","M0007","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0002","M0005","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0002","M0004","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0002","M0003","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0002","M0002","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0002","M0001","P0002","Roti Keju","1");
INSERT INTO bom_produk VALUES("B0001","M0004","P0001","Roti Kering","1");
INSERT INTO bom_produk VALUES("B0001","M0001","P0001","Roti Kering","1");
INSERT INTO bom_produk VALUES("B0001","M0002","P0001","Roti Kering","1");



CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL,
  PRIMARY KEY (`kode_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO customer VALUES("C0001","contoh","contoh@mail.com","contoh","$2y$10$pVFe/a4gDvzICBk8ck1urO.bnMItWTHlQ7fanU1J4PaBGezNCM/RW","+625669465486");



CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`kode_bk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO inventory VALUES("M0001","Butter","90","Kg 1","9000","2022-02-24");
INSERT INTO inventory VALUES("M0002","Margarin","90","Kg 1","25000","2022-02-24");
INSERT INTO inventory VALUES("M0003","Gula Halus","95","Kg 1","19000","2022-02-24");
INSERT INTO inventory VALUES("M0004","Telur","90","Kg 1","25000","2022-02-24");
INSERT INTO inventory VALUES("M0005","Maizena","95","Kg 1","12000","2022-02-24");
INSERT INTO inventory VALUES("M0006","Susu Bubuk","95","Kg 1","60000","2022-02-24");
INSERT INTO inventory VALUES("M0007","Keju","95","Kg 1","15000","2022-02-24");



CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL AUTO_INCREMENT,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_keranjang`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4;

INSERT INTO keranjang VALUES("16","C0003","P0002","Maryam","5","15000");
INSERT INTO keranjang VALUES("17","C0003","P0003","Kue tart coklat","2","100000");



CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`kode_produk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO produk VALUES("P0001","Roti Kering","621e09982be2e.jpg","Silahkan order untuk pemesanan hari ini bisa diantar setelah tahap checkout selesai.","12000");
INSERT INTO produk VALUES("P0002","Roti Keju","621e0a21937d4.jpg","Silahkan order untuk pemesanan hari ini bisa diantar setelah tahap checkout selesai.
			","15000");
INSERT INTO produk VALUES("P0003","Roti Pretzel","621e0b05545d9.jpg","Silahkan order untuk pemesanan hari ini bisa diantar setelah tahap checkout selesai.
			","20000");
INSERT INTO produk VALUES("P0004","Roti Sobek","621e0deb4db6b.jpg","
			Silahkan order untuk pemesanan hari ini bisa diantar setelah tahap checkout selesai.","12000");
INSERT INTO produk VALUES("P0005","Roti Gandum","621e0e91d3cd6.jpg","Silahkan order untuk pemesanan hari ini bisa diantar setelah tahap checkout selesai.
			","25000");
INSERT INTO produk VALUES("P0006","Roti Baguette","621e0f273359c.jpg","Silahkan order untuk pemesanan hari ini bisa diantar setelah tahap checkout selesai.
			","15000");



CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL,
  PRIMARY KEY (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;

INSERT INTO produksi VALUES("27","INV0001","C0001","P0001","Roti Kering","1","12000","0","2222-03-04","Tangerang","Tangerang","jauh sekali","15341","1","0","0");
INSERT INTO produksi VALUES("28","INV0002","C0001","P0002","Roti Keju","1","15000","0","2222-03-05","Tangerang","Tangerang","jauh sekali","15341","1","0","0");
INSERT INTO produksi VALUES("29","INV0003","C0001","P0003","Roti Pretzel","1","20000","Pesanan Baru","2222-03-05","Tangerang","Tangerang","jauh sekali","15341","2","1","0");



;




CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_cancel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL,
  PRIMARY KEY (`id_report_inv`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_omset`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL AUTO_INCREMENT,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_prd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL AUTO_INCREMENT,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL,
  PRIMARY KEY (`id_report_profit`),
  UNIQUE KEY `kode_bom` (`kode_bom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




CREATE TABLE `ujikom` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


