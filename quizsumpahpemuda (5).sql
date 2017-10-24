-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 23, 2017 at 04:44 AM
-- Server version: 5.6.11
-- PHP Version: 5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quizsumpahpemuda`
--

-- --------------------------------------------------------

--
-- Table structure for table `jatahsoal`
--

CREATE TABLE IF NOT EXISTS `jatahsoal` (
  `idjatah` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `kode` varchar(30) NOT NULL,
  PRIMARY KEY (`idjatah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jatahsoal`
--

INSERT INTO `jatahsoal` (`idjatah`, `username`, `kode`) VALUES
(1, 'admin', 'BU2.1'),
(2, 'admin', 'BU2.2'),
(3, 'admin', 'BU2.3'),
(4, 'admin', 'BU2.4'),
(5, 'admin', 'BU2.5'),
(6, 'admin', 'BU1.1'),
(7, 'admin', 'BU1.2'),
(8, 'admin', 'BU1.3'),
(9, 'admin', 'BU1.4'),
(10, 'admin', 'BU1.5'),
(11, 'admin', 'BU6.1'),
(12, 'admin', 'BU6.2'),
(13, 'admin', 'BU6.3'),
(14, 'admin', 'BU6.4'),
(15, 'admin', 'BU6.5'),
(16, 'admin', 'BPA3.1'),
(17, 'admin', 'BPA3.2'),
(18, 'admin', 'BPA3.3'),
(19, 'admin', 'BPA3.4'),
(20, 'admin', 'BPA3.5'),
(21, 'admin', 'BPA4.1'),
(22, 'admin', 'BPA4.2'),
(23, 'admin', 'BPA4.3'),
(24, 'admin', 'BPA4.4'),
(25, 'admin', 'BPA4.5'),
(26, 'admin', 'BPA5.1'),
(27, 'admin', 'BPA5.2'),
(28, 'admin', 'BPA5.3'),
(29, 'admin', 'BPA5.4'),
(30, 'admin', 'BPA5.5');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban`
--

CREATE TABLE IF NOT EXISTS `jawaban` (
  `idjawaban` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `jawaban` varchar(5) NOT NULL,
  PRIMARY KEY (`idjawaban`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jawaban`
--

INSERT INTO `jawaban` (`idjawaban`, `username`, `kode`, `jawaban`) VALUES
(1, 'admin', 'BU2.1', 'C'),
(2, 'admin', 'BU2.2', 'B'),
(3, 'admin', 'BU2.3', ''),
(4, 'admin', 'BU2.4', ''),
(5, 'admin', 'BU2.5', ''),
(6, 'admin', 'BU1.1', ''),
(7, 'admin', 'BU1.2', ''),
(8, 'admin', 'BU1.3', ''),
(9, 'admin', 'BU1.4', ''),
(10, 'admin', 'BU1.5', ''),
(11, 'admin', 'BU6.1', ''),
(12, 'admin', 'BU6.2', ''),
(13, 'admin', 'BU6.3', ''),
(14, 'admin', 'BU6.4', ''),
(15, 'admin', 'BU6.5', ''),
(16, 'admin', 'BPA3.1', ''),
(17, 'admin', 'BPA3.2', ''),
(18, 'admin', 'BPA3.3', ''),
(19, 'admin', 'BPA3.4', ''),
(20, 'admin', 'BPA3.5', ''),
(21, 'admin', 'BPA4.1', ''),
(22, 'admin', 'BPA4.2', ''),
(23, 'admin', 'BPA4.3', ''),
(24, 'admin', 'BPA4.4', ''),
(25, 'admin', 'BPA4.5', ''),
(26, 'admin', 'BPA5.1', ''),
(27, 'admin', 'BPA5.2', ''),
(28, 'admin', 'BPA5.3', ''),
(29, 'admin', 'BPA5.4', ''),
(30, 'admin', 'BPA5.5', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE IF NOT EXISTS `jurusan` (
  `idjurusan` int(11) NOT NULL AUTO_INCREMENT,
  `jurusan` varchar(10) NOT NULL,
  PRIMARY KEY (`idjurusan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`idjurusan`, `jurusan`) VALUES
(1, 'IPA'),
(2, 'IPS');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE IF NOT EXISTS `kelas` (
  `idkelas` int(11) NOT NULL AUTO_INCREMENT,
  `kelas` varchar(11) NOT NULL,
  PRIMARY KEY (`idkelas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`idkelas`, `kelas`) VALUES
(1, '1'),
(2, '2'),
(3, '3');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE IF NOT EXISTS `nilai` (
  `username` varchar(30) NOT NULL,
  `nilai` double NOT NULL,
  `tglmulai` datetime NOT NULL,
  `tanggal` datetime NOT NULL,
  `durasi` datetime NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`username`, `nilai`, `tglmulai`, `tanggal`, `durasi`) VALUES
('admin', 3.3333333333333, '2017-10-23 09:31:23', '2017-10-23 09:39:15', '2000-00-00 00:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `sekolah`
--

CREATE TABLE IF NOT EXISTS `sekolah` (
  `idsekolah` int(11) NOT NULL AUTO_INCREMENT,
  `namasekolah` varchar(50) NOT NULL,
  PRIMARY KEY (`idsekolah`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `sekolah`
--

INSERT INTO `sekolah` (`idsekolah`, `namasekolah`) VALUES
(1, 'SMA NEGERI 1 JEMBER'),
(3, 'SMA NEGERI 2 JEMBER'),
(4, 'SMA NEGERI 3 JEMBER'),
(5, 'SMA NEGERI 4 JEMBER'),
(6, 'SMA NEGERI 5 JEMBER'),
(7, 'SMA NEGERI 1 ARJASA'),
(8, 'SMA NEGERI 1 KALISAT'),
(9, 'SMA NEGERI 1 TANGGUL'),
(10, 'SMA NEGERI 2 TANGGUL'),
(11, 'SMA NEGERI 1 PAKUSARI');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE IF NOT EXISTS `soal` (
  `kode` varchar(10) NOT NULL,
  `jurusan` varchar(10) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `mapel` varchar(30) NOT NULL,
  `soal` text NOT NULL,
  `jawabana` text NOT NULL,
  `jawabanb` text NOT NULL,
  `jawabanc` text NOT NULL,
  `jawaband` text NOT NULL,
  `jawabanbenar` varchar(1) NOT NULL,
  PRIMARY KEY (`kode`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`kode`, `jurusan`, `kelas`, `mapel`, `soal`, `jawabana`, `jawabanb`, `jawabanc`, `jawaband`, `jawabanbenar`) VALUES
('APA3.1', 'IPA', '1', 'Fisika', 'Sebuah balok bermassa 1,5 kg didorong ke atas oleh gaya konstan F = 15 N pada bidang miring. Anggap percepatan gravitasi (g) 10 ms-2 dan gesekan antara balok dan bidang miring nol. Usaha total yang dilakukan pada balok adalah ...', '15 J', '30 J', '35 J', '45 J', 'A'),
('APA3.2', 'IPA', '1', 'Fisika', 'Sebuah peluru dengan massa 20 gram ditembakkan pada sudut elevasi 60 dan kecepatan 40 m/s. Jika gesekan dengan udara diabaikan, maka energi kinetik peluru pada titik tertinggi adalah ... ', '0 joule', '4 joule ', '8 joule', '12 joule', 'B'),
('APA3.3', 'IPA', '1', 'Fisika', 'Sebanyak 3 liter gas Argon bersuhu 270 C pada tekanan 1 atm (1 atm = 105 Pa) berada di dalam tabung. Jika konstanta gas umum R = 8,314 J/mK dan banyaknya partikel dalam 1 mol gas 6,02 x 1023 partikel, maka banyak partikel gas Argon dalam tabung tersebut adalah ', '0,83 x 1023 partikel', '0,72 x 1023 partikel', '0,42 x 1023 partikel', '0,22 x 1023 partikel', 'B'),
('APA3.4', 'IPA', '1', 'Fisika', ' Pelindung bagian-bagian mata bagian dalam yaitu?', 'Iris', 'Pupil', 'Lensa', 'Kornea', 'D'),
('APA3.5', 'IPA', '1', 'Fisika', 'Fungsi teropong bintang adalah?', 'memperbesar bintang yang diamati ', 'mendekatkan objek yg diamati', 'mempertajam bayangan bintang', 'memperedup bayangan bintang', 'A'),
('APA4.1', 'IPA', '1', 'Kimia', 'Teori yang menyatakan bahwa atom berupa sebuah bola kosong adalah teori dari....', 'Teori atom Delton', 'Teori atom Thomson', 'Teori atom Rutherford', 'Teori atom Bohr', 'A'),
('APA4.2', 'IPA', '1', 'Kimia', 'Model atom "roti kismis" dikemukakan oleh', 'Delton', 'Thomson', 'Chadwick', 'Bohr', 'B'),
('APA4.3', 'IPA', '1', 'Kimia', 'Unsur  A, B, C, D, dan E  mempunyai  nomor  atom  berturut-turut 2, 3, 8, 13  dan  16. Pasangan  unsur yang berada dalam satu golongan adalah....', 'A dan E   ', 'B dan C  ', 'C dan D', 'D dan E', 'D'),
('APA4.4', 'IPA', '1', 'Kimia', 'Rumus kimia untuk emas dan perak berturut-turut adalah....', 'Fm dan Pr', 'Au dan Ag ', 'Au dan Pr    ', ' Fm dan Ag', 'B'),
('APA4.5', 'IPA', '1', 'Kimia', 'Jumlah atom dalam 7 molekul Ca (OH )2 adalah....atom.', '6', '8', '16', '35', 'D'),
('APA5.1', 'IPA', '1', 'Biologi', 'Makhluk hidup dibagi menjadi dua kingdom. Pernyataan ini dikemukakan oleh ….', 'Darwin', 'Einstein', 'Lamark', 'Aristoteles', 'D'),
('APA5.2', 'IPA', '1', 'Biologi', 'Pemberian tata nama ganda diatur dalam Kode Internasional yang disebut dengan …. ', 'Binomial nomenklatur', 'kunci determinasi', 'klasifikas', 'pengelompokkan', 'A'),
('APA5.3', 'IPA', '1', 'Biologi', 'Tingkatan terendah dari klasifikasi tumbuhan dan hewan adalah …. ', 'Kingdom', 'Spesies', 'Filum', 'Kelas', 'B'),
('APA5.4', 'IPA', '1', 'Biologi', 'Urutan takson tumbuhan dari kelompok terbesar ke kelompok terkecil adalah ….', 'kingdom-filum-bangsa-kelas-suku-marga-jenis ', 'kingdom-filum-kelas-bangsa-suku-marga-jenis', 'kingdom-divisio-kelas-bangsa-suku-marga-jenis', 'kingdom-divisio-bangsa-kelas-suku-marga-jenis ', 'C'),
('APA5.5', 'IPA', '1', 'Biologi', 'Suku kata pertama pada tata cara pemberian nama ganda menunjukkan …. ', 'kelas', 'ordo', 'genus', 'spresies', 'C'),
('APS3.1', 'IPS', '1', 'Ekonomi', 'Salah satu ciri sistem ekonomi terpusat adalah ?', 'semua sektor perekonomian dikuasai oleh negara.', 'bebas berusaha dan mencari laba.', 'adanya persaingan bebas antar pelaku ekonomi.', 'faktor-faktor produksi dikuasai oleh produsen.', 'A'),
('APS3.2', 'IPS', '1', 'Ekonomi', 'Persoalan di bawah ini yang merupakan pembahasan dalam ekonomi mikro adalah ?', 'permintaan tenaga kerja di perusahaan X.', 'tingkat pengangguran di Indonesia.', 'tingkat harga rata-rata.', 'konsumsi agregat.', 'A'),
('APS3.3', 'IPS', '1', 'Ekonomi', 'Salah satu faktor penyebab kelangkaan adalah ?', 'pertumbuhan penduduk yang tidak seimbang dengan pertumbuhan produksi.', 'selarasnya peningkatan kebutuhan manusia dengan kemampuan penyediaan sarana kebutuhan.', 'kemampuan manusia yang tidak terbatas dalam mengolah sumber daya alam.', 'tidak terbatasnya persediaan sumber daya alam.', 'A'),
('APS3.4', 'IPS', '1', 'Ekonomi', 'Biaya yang timbul akibat pelaku ekonomi mengambil satu pilihan di antara berbagai pilihan yang dihadapinya disebut biaya ?', 'opportunity.', 'choice.', 'consumption.', 'sunk.', 'A'),
('APS3.5', 'IPS', '1', 'Ekonomi', 'Sabun, sampo, dan udara adalah contoh kebutuhan manusia ?', 'menurut sifatnya.', 'menurut intensitasnya.', 'berdasarkan subjeknya.', 'dari cara memperolehnya.', 'B'),
('APS4.1', 'IPS', '1', 'Geografi', 'Yang pertama kali mengemukakan istilah geografi yaitu...', 'Bintarto', 'Erastothenes', 'Thales', 'Karl Ritter', 'B'),
('APS4.2', 'IPS', '1', 'Geografi', 'Prinsip geografi yang melihat suatu permasalahan geografi berdasarkan sudut pandang interelasi, persebaran, dan interaksinya dalam suatu daerah dan ruang tertentu yaitu prinsip....', 'Pola', 'Interelasi', 'Korologi', 'Interaksi', 'C'),
('APS4.3', 'IPS', '1', 'Geografi', 'Cabang ilmu geografi yang mengkaji tentang persebaran fauna dan flora di bumi adalah ...', 'Biologi', 'Biografi', 'Biogeografi', 'Biofisika', 'C'),
('APS4.4', 'IPS', '1', 'Geografi', 'Geografi dibagi menjadi dua cabang utama, antara lain ...', 'Geografi tekhnik dan geografi manusia', 'Geografi alam dan geografi manusia', 'Geografi alam dan geografi fisik', 'Geografi fisik dan geografi manusia', 'D'),
('APS4.5', 'IPS', '1', 'Geografi', 'Kajian geografi mengenai geomorfologi, air permukaan, dan penduduk merupakan bagian dari...', 'Objek material', 'Objek bentang lahan fisik', 'Objek bentang lahan budaya', 'Objek biosfer', 'A'),
('APS5.1', 'IPS', '1', 'Sejarah', 'Istilah sejarah berasal dari bahasa Arab, yaitu syajaratun yang artinya ...', 'tumbuhan', 'bunga', 'pohon', 'rantai', 'C'),
('APS5.2', 'IPS', '1', 'Sejarah', 'Sejarah dapat dipandang sebagai karya seni. Maksudnya ...', 'mirip sekali dengan dongeng', 'tak berbeda dengan cerita fiksi', 'merupakan karya seniman', 'penyimpulan dan penulisan suatu peristiwa sejarah erat dengan kaidah dan keindahan bahasa', 'E'),
('APS5.3', 'IPS', '1', 'Sejarah', 'Sejarah memberikan pelajaran bagaimana hari ini dikelola dan bagaimana hari esok dirancang agar tidak mengulangi kesalahan-kesalahan masa lalu. Dengan begitu sejarah memiliki nilai guna ...', 'edukatif', 'inspiratif', 'rekreatif', 'persuasive', 'A'),
('APS5.4', 'IPS', '1', 'Sejarah', 'Menurut kamus besar Bahasa Indonesia (1990) pengertian folklor adalah ...', 'adat-istiadat tradisional dan cerita rakyat yang diwariskan secara turun-temurun, yang dibukukan', 'adat istiadat tradisional yang memiliki cerita rakyat yang diwariskan secara turun temurun, tetapi tidak dibukukan', 'ahasil abstraksi dari pengalaman sosial suatu masyarakat', 'seluruh kebudayaan yang diwariskan secara turun temurun secara lisan atau contoh', 'B'),
('APS5.5', 'IPS', '1', 'Sejarah', 'Urutan langkah dalam penelitian sejarah yang benar adalah ....', 'Heuristik, verifikasi, interpretasi, pemilihan topik, historiografi.', 'Verifikasi, heuristik,interpretasi, pemilihan topik, historiografi.', 'Pemilihan topik, heuristik, verifikasi, interpretasi, historiografi.', 'Pemilihan topik, heuristik, interpretasi, verifikasi, historiografi.', 'C'),
('AU1.1', 'Umum', '1', 'Matematika', 'Jika log 3 = 0,4771 dan log 2 = 0,3010, maka nilai dari log 75 =...', '0.7781', '0.9209', '1.0791', '1.8751', 'D'),
('AU1.2', 'Umum', '1', 'Matematika', 'Dalam segitiga ABC berlaku b^2= a^2+ c^2+ ac(akar3) maka besar sudut B adalah... derajat.', '60', '90', '120', '150', 'D'),
('AU1.3', 'Umum', '1', 'Matematika', 'Diketahui kubus ABCD.EFGH dengan rusuk 8 cm. Sudut antara BE dengan BDHF adalah...', '30', '45', '60', '75', 'A'),
('AU1.4', 'Umum', '1', 'Matematika', 'Garis garis yang sejajar pada balok ABCD.EFGH adalah...', 'AB dan BC', 'EH dan FG', 'AE dan GH', 'HD dan BC', 'B'),
('AU1.5', 'Umum', '1', 'Matematika', 'Nilai kebenaran dari pernyataan (~p^q) => (p v  ~q) adalah ....', 'BBSB', 'BSBB', 'SBBB', 'SSBB', 'A'),
('AU2.1', 'umum', '1', 'Indonesia', 'Berdasarkan hasil penelitian, satu pohon jika dikonversi ke rupiah bisa menghasilkan oksigen senilai Rp 1.174.000,00 per hari. Tentu pohon-pohon yang ditebang secara asal-asalan akan mempengaruhi ekosistem yang ada. Jika keseimbangan alam terganggu, dampaknya akan sangat dirasakan oleh manusia. Padahal fungsi pohon itu sendiri untuk menyerap air dan menyediakan oksigen secara gratis. Bayangkan saja apabila kila harus membeli oksigen untuk bernafas, berapa biaya yang kita keluarkan? \nArti istilah dikonversi dalam paragraf tersebut adalah ...', 'Dibentuk', 'Ditukar', 'Digunakan', 'Dihasilkan', 'B'),
('AU2.2', 'umum', '1', 'Indonesia', 'Dewasa ini kita tidak asing lagi mendengar kata internet. Penggunaan internet berkembang dengan pesat. Sekarang masyarakat dapat dengan mudah mengakses internet di warnet atau melalui laptop dengan modem ataupun wireless-connected bahkan lewat HP. Jumlah pengguna internet pun akan terus bertambah. \nArti istilah pesat dalam paragraf tersebut adalah ...', 'Banyak', 'Lambat', 'Cepat', 'Kuat', 'C'),
('AU2.3', 'umum', '1', 'Indonesia', 'Hidup bermasyarakat perlu saling menghargai. Salah satu bentuk penghargaan adalah pemberian pujian. Membiasakan memberikan pujian berarti belajar hidup saling menghargai. Hal itu akan membuat hidup ini semakin terasa indah. Makna tersurat paragraf di atas adalah...', 'Bentuk penghargaan tidak hanya pemberian pujian tetapi bisa juga dengan pemberian hadiah.', 'Hidup dengan memberi akan terasa sangat indah.', 'Hidup dalam keanekaragaman harus saling menghargai.', 'Pemberian pujian merupakan salah satu bentuk penghargaan dalam hidup bermasyarakat.', 'D'),
('AU2.4', 'umum', '1', 'Indonesia', 'Perekonomian di dunia terus merosot yang disebabkan resesi di Eropa yang berkepanjangan. Hal ini membawa dampak yang sangat besar bagi perajin di Indonesia karena produknya tidak dapat diekspor bahkan gagal ekspor. Untuk mempertahankan kelangsungan hidup keluarga dan karyawannya banyak perajin kita yang beralih usaha lain. Makna tersurat paragraf di atas adalah ...', 'Perekonomian Indonesia merosot sehingga berdampak di perekonomian dunia.', 'Dampak kemerosoton perekonomian dunia, perajin Indonesia beralih usaha lain.', 'Kegagalan mengekspor produk karena perajin tidak mampu bersaing untuk menghasilkan produk unggulan.', 'Eropa menjadi penyebab Indonesia tidak bisa ekspor produk.', 'B'),
('AU2.5', 'umum', '1', 'Indonesia', '"Bacalah kutipan cerpen berikut! \n"Mamaaaaa" teriak Sasa. \n"Ada apa, Sasa? Kok teriak-teriak begitu kayak di hutan saja" tanya mama. \n"Ini nih, Ma. Lihat!! Masak bajunya gak muat, mana besok harus datang ke pesta ulang tahun Reno" \n"Ya sudah, pakai yang lain saja atau mau pakai punya mama" kata mama sambil tersenyum. \nSasa hanya bisa mengernyitkan dahinya dan mendengus kesal. Makna tersurat dari kutipan cerpen di atas adalah ...', 'Sasa kesal karena diejek oleh mamanya.', 'Sasa tidak memiliki baju untuk ke pesta ulang tahun Reno.', 'Mama memilihkan baju untuk Sasa.', 'Sasa sedang mempersiapkan baju yang akan dipakai saat pesta ulang tahun Reno.', 'B'),
('AU6.1', 'Umum', '1', 'English', 'All children must... elementary schools.', 'visit', 'come by', 'learn                 ', 'attend', 'C'),
('AU6.2', 'Umum', '1', 'English', 'The sun  ...in the east and ... in the west.', '"rise, set"', '"rises, set "', '"rise, sets"', '"rises, sets"', 'D'),
('AU6.3', 'Umum', '1', 'English', '"However, he continued to work until he passed away on January 8, 1642.\n\nPassed away has the same meaning with"', 'passed by', 'died', 'took away', 'went away', 'B'),
('AU6.4', 'Umum', '1', 'English', '"Mr. Lukman : Allow me to introduce my self. Lukman, an English teacher \nStudent : How do you do Mr. Lukman? We''re glad to meet you. \nFrom the dialogue above we know that..."', 'The students have already known Mr. Lukman', 'Mr. Lukman has already known the students', 'Mr. Lukman and the students have known each other', '"Mr. Lukman is new English teacher"', 'D'),
('AU6.5', 'Umum', '1', 'English', '"NUR : Where does he usually ... His bag?\nLIA : He usually ... it on the cupboard"', 'Put - put', 'puts - to put', 'puts - puts', 'put - puts', 'D'),
('BPA3.1', 'IPA', '2', 'Fisika', 'Besaran yang menyebabkan benda dapat melakukan gerak rotasi adalah ...', 'Momentum sudut', 'Percepatan sudut', 'Momen gaya', 'Momen inersia  ', 'C'),
('BPA3.2', 'IPA', '2', 'Fisika', 'Sebuah batang homogen yang panjangnya 80 cm dan massanya 3 kg. Batang itu   diputar   dengan poros terletak pada jarak 20 cm dari salah satu ujungnya. Besar   momen inersia batang itu adalah...', '0,28 kgm^2', '0,56 kgm^2   ', '2,8 kgm^2 ', '5,6 kgm^2', 'A'),
('BPA3.3', 'IPA', '2', 'Fisika', 'Hukum I Termodinamika menyatakan bahwa :', 'Kalor tidak dapat masuk ke dalam dan ke luar dari suatu sistem', 'Energi adalah kekal', 'Energi dalam adalah kekal', 'Suhu adalah tetap', 'B'),
('BPA3.4', 'IPA', '2', 'Fisika', 'Sejumlah gas ideal bertekanan p dipanaskan dari suhu 27C menjadi 54C. Jika volumenya naik menjadi dua kali volume semula tekanannya akan menjadi ...', '0,25 p', '0,55 p', '0,75 p', 'p', 'D'),
('BPA3.5', 'IPA', '2', 'Fisika', 'Persamaan gas ideal (P V = nRT) berdimensi ...', 'Konstanta pegas', 'energi/usaha', 'massa jenis', 'Tekanan', 'B'),
('BPA4.1', 'IPA', '2', 'Kimia', ' Hidrokarbon tak jenuh dibagi menjadi:', 'butana dan propana', 'alkana dan alkuna', 'alkena dan alkuna', 'alkana dan alkena', 'C'),
('BPA4.2', 'IPA', '2', 'Kimia', '"Nama IUPAC dari senyawa berikut CH3-CH2- CH2- CH2-CH3 adalah?."', 'pentana', 'butana', 'etana', 'propana', 'A'),
('BPA4.3', 'IPA', '2', 'Kimia', 'Kalor netralisasi adalah 120 kkal/mol, maka kalor netralisasi 100 mL HCl 0.1 M dengan 150 mL NaOH 0.075 M adalah...', '12 kal', '120 kal', '2.400 kal', '1.200 kal', 'D'),
('BPA4.4', 'IPA', '2', 'Kimia', '"Dari data : \n\n2H2 (g) + O2(g) -> 2H2O(l) ?H = -571 kJ \n\n2Ca(s) + O2(g) -> 2CaO (s) ?H = -1.269 kJ \n\nCaO(s) + H2O(l) -> Ca (OH)2(s) ?H = -64 kJ \n\nDapat dihitung entalpi pembentukan Ca (OH)2 (s) sebesar...', '-984 kJ/mol', '-1.161 kJ/mol', '-856 kJ/mol', '-1.904 kJ/mol', 'A'),
('BPA4.5', 'IPA', '2', 'Kimia', 'Kenaikan suhu umumnya menaikkan reaksi Alasan yang tepat untuk menjelaskan hal di atas adalah ...', 'energi kinetik dari molekul-molekul menurun', 'kenaikkan suhu menghasilkan reaksi dapat balik', 'kecepatan masing-masing molekul menjadi sama', 'energi kinetik dari molekul-molekul meningkat', 'D'),
('BPA5.1', 'IPA', '2', 'Biologi', 'Hewan berikut ini yang belung memiliki sistem organ adalah …', 'cacing tanah', 'hewan spons', 'belalang', 'siput', 'A'),
('BPA5.2', 'IPA', '2', 'Biologi', 'Jaringan embrional adalah jaringan yang …', 'tersusun atas sel-sel embrional', 'terdapat dalam sel penyusun zigot', 'sel-senya senantiasa membelah', 'terseusun atas sel-sel yang bentuknya sama', 'C'),
('BPA5.3', 'IPA', '2', 'Biologi', 'Jaringan epitel yang biasa tersusun atas lembaran mempunyai fungsi yang berkaitan dengan …', 'sekresi dan prteksi', 'pengangkutan dan sekresi', 'absorbsi dan transportasi', 'proteksi dan absorbsi', 'D'),
('BPA5.4', 'IPA', '2', 'Biologi', 'Jaringan yang mempunyai kemampuan iritabilitas dan konduktifitas ialah jaringan …', 'saraf', 'otot polos', 'otot lurik', 'epitel', 'A'),
('BPA5.5', 'IPA', '2', 'Biologi', 'Jaringan tulang rawan elastin terdapat pada …', 'batang tenggorok', 'permukaan tulag sendi', 'ujung tulang rusuk', 'daun telinga', 'D'),
('BPS3.1', 'IPS', '2', 'Ekonomi', 'Salah satu dampak pengangguran terhadap kegiatan ekonomi adalah, kecuali ?.', 'Pendapatan nasional akan naik jika terjadi peningkatan produktivitas tenaga kerja', 'Pengangguran secara tidak langsung berkaitan dengan pendapatan nasional', 'Tingginya jumlah pengangguran akan menyebabkan turunnya gross domestic product', '?Struktur perekonomian terganggu oleh tingginya pengangguran', 'A'),
('BPS3.2', 'IPS', '2', 'Ekonomi', 'Pengangguran Musiman dapat diatasi melalui cara ?..', 'Memperluas pasar barang dan jasa', 'Pemberian informasi yang cepat jika ada lowongan kerja di sektor lain, dan Melakukan pelatihan di bidang keterampilan lain untuk memanfaatkan waktu ketika menunggu musim tertentu', 'Pelatihan agar memiliki ketrampilan untuk dapat bekerja pada masa menunggu musim tertentu', 'Mengusahakan pembangunan yang bersifat padat karya', 'B'),
('BPS3.3', 'IPS', '2', 'Ekonomi', 'Contoh pajak langsung adalah...', 'Pajak pendapatan dan pajak penjualan', 'Pajak pendapatan dan pajak bea masuk', 'Pajak penjualan dan pajak petambahan niali', 'Pajak pendapatan dan pajak bumi dan bangunan', 'D'),
('BPS3.4', 'IPS', '2', 'Ekonomi', 'Pada penyusunan APBN,pemerintah menetapkan belanja negara lebih sedikit dari pada penerimaan negara. Dengan demikian,penyusunan APBN tersebut menerapkan kebijakan anggaran....', 'Surplus', 'Defisit', 'Berimbang', 'Defisit dinamis', 'A'),
('BPS3.5', 'IPS', '2', 'Ekonomi', 'Dalam teori Adam Smith, kaitan antara pertumbuhan ekonomi dengan pertambahan hasil dilihat dari tiga faktor, yaitu ??', 'Persediaan SDA, persediaan barang modal, jumlah penduduk', 'Persediaan SDA, akumulasi modal, output', 'Jumlah penduduk, modal, persediaan SDA', 'Persediaan barang modal, modal, IPTEK', 'A'),
('BPS4.1', 'IPS', '2', 'Geografi', 'Bentangan vegetasi secara urut dari Indonesia bagian Barat sampai Nusa Tenggara Timur dijumpai vegetasi ...', 'hutan hujan tropis, hutan musim, hutan sabana', 'hutan musim , hutan hujan tropis , hutan sabana', 'hutan musim , hutan sabana , hutan hujan tropis', 'hutan sabana , hutan musim , hutan hujan tropis', 'A'),
('BPS4.2', 'IPS', '2', 'Geografi', 'Bioma Hutan Taiga banyak terdapat di daerah Skandinavia, Rusia, Siberia, Alaska, Kanada dan memiliki ciri-ciri perbedaan antara suhu musim panas dan musim dingin cukup tinggi. Tanaman khas pada bioma ini adalah...', 'jati', 'pinus', 'mahoni', 'sakura', 'A'),
('BPS4.3', 'IPS', '2', 'Geografi', 'Yang tergolong kelompok hewan peralihan di Indonesia adalah ...', 'badak, maleo dan komodo', 'babi rusa, gajah, dan badak', 'maleo, komodo dan babi rusa', 'gajah, kangguru, dan maleo', 'C'),
('BPS4.4', 'IPS', '2', 'Geografi', 'Hutan mempunyai fungsi langsung dan tidak langsung. Fungsi tidak langsung ialah fungsi hidrologi, yaitu ...', 'mencegah erosi', 'mengatur air tanah', 'menyebabkan udara segar', 'membentuk humus tanah', 'B'),
('BPS4.5', 'IPS', '2', 'Geografi', 'Upaya pelestarian lingkungan dengan memperhatikan manfaat yang dapat diperoleh pada saat ini dan tetap mempertahankan keberadaan setiap komponen lingkungan disebut ...', 'konservasi', 'degradasi', 'reboisasi', 'rehabilitasi', 'A'),
('BPS5.1', 'IPS', '2', 'Sejarah', 'Sejak berlakunya undang-undang agraria dan undang-undang gula pemerintah belanda menjalankan politik pintu terbuka. Politik pintu terbuka berlangsung antara tahun...', '1860-1870', '1860-1880', '1870-1880', '1870-1900', 'D'),
('BPS5.2', 'IPS', '2', 'Sejarah', 'Salah satu akibat pelaksanaan sistem ekonomi liberal bagi indonesia adalah menurunnya usaha kerajinan rakyat karena...', 'Rakyat kekurangan modal usaha', 'Kalah bersaing dengan barang-barang impor dari eropa', 'Rakyat lebih memilih menanam padi', 'Rakyat lebih memilih tanaman kopi', 'B'),
('BPS5.3', 'IPS', '2', 'Sejarah', 'Budi utomo merupakan organisasi pergerakan pertama di indonesia. Oleh karena itu, pada tanggal 20 mei 1908 di jadikan sebagai...', 'Hari kebangkitan nasional', 'Hari pendidikan nasional', 'Ujung tombak dari organisasi yang lainnya', 'Hari organisasi', 'A'),
('BPS5.4', 'IPS', '2', 'Sejarah', 'Terjadinya peristiwa rengas dengklok karena...', 'Perbedaan pendapat antara golongan tua dan golongan pemuda mengenai pelaksanaan proklamasi kemerdekaan', 'Para pemuda ingin mengalahkan tentara jepang', 'Para pemuda mengamankan soekarno hatta dari tentara jepang', 'Ingin diakuinya peranan golongan pemuda', 'A'),
('BPS5.5', 'IPS', '2', 'Sejarah', 'Pada masa pemerintahan gubernur jenderal daendels, pulau jawa dijadikan sebagai pusat pemerintahan dan membaginya menjadi kesatuan-kesatuan wilayah yang disebut...', 'Cultuurestelsel', 'Bestuurshervorming', 'Prefectuure', 'Gouvernementen', 'C'),
('BU1.1', 'Umum', '2', 'Matematika', 'Pada suatu kelas akan diadakan pemilihan pengurus kelas yang terdiri atas ketua, bendahara, dan sekretaris. Calon yang akan dipilih sebagai ketua kelas ada 3 orang, yang akan di pilih sebagai bendahara ada 2 orang, dan akan dipilih sebagai sekretaris ada 3 orang. Jika setiap calon hanya bisa dipilih untuk jabatan yang bersangkutan, maka banyak cara susunan pengurus adalah ... cara', '16', '17', '18', '19', 'C'),
('BU1.2', 'Umum', '2', 'Matematika', 'Suku banyak 2x3 + 5x2 + ax +b dibagi x+1 sisanya 1 dan jika dibagi x-2 sisanya 43. Nilai a+b=....', '4', '2', '-2', '-4', 'A'),
('BU1.3', 'Umum', '2', 'Matematika', 'Kedudukan garis g: x + y = 3 terhadap lingkaran L: x2 + y2 = 36 adalah....', 'Garis g memotong lingkaran L di satu titik', 'Garis g di luar lingkaran L', 'Garis g memotong lingkaran L di dua titik', 'Tidak ada', 'C'),
('BU1.4', 'Umum', '2', 'Matematika', 'Dalam sebuah kotak berisi 3 bola merah, 2 bola kuning, dan 5 bola cokelat. Diambil dua bola satu demi satu tanpa pengembalilan. Peluang terambil bola merah dan kuning adalah ...', '4/15', '3/15', '2/15', '1/15', 'E'),
('BU1.5', 'Umum', '2', 'Matematika', 'Nilai dari 10C7 (kombinasi) adalah ?', '105', '110', '120', '135', 'C'),
('BU2.1', 'umum', '2', 'Indonesia', 'Bacalah kutipan cerpen berikut! \nAku bersyukur kepada Tuhan karena dia telah berubah. Aku pun memaafkannya, meskipun sampai saat ini aku belum bertemu dia lagi. Aku berharap suatu hari nanti kami akan menjalin persahabatan lagi.\nPenggalan cerpen di atas merupakan bagian ...', 'Krisis', 'Resolusi', 'Orientasi', 'Komplikasi', 'B'),
('BU2.2', 'umum', '2', 'Indonesia', 'Bacalah kutipan fabel berikut! \nMatahari mulai tenggelam, anak katak yang nakal itu tidak juga pulang. Ibu katak sangat khawatir. Ia kemudian mencari anak katak. Ternyata anak katak masih asyik bermain dengan teman-temannya. Ibu katak mengajak anaknya pulang. Dengan berat hati, katak menyudahi dan mengikuti ibunya pulang. \nKata "matahari yang mulai tenggelam'' tersebut mengandung makna ...', 'Hari hampir sore', 'Hari hampir pagi', 'Hari hampir malam', 'Hari hampir siang', 'C'),
('BU2.3', 'umum', '2', 'Indonesia', 'Cermatilah petunjuk pembuatan cilok khas Bandung! \n1.Tepung terigu, garam, gula, merica dicampur dengan air panas sampai basahnya merata (jangan terlalu cair). \n2.Setelah kalis, siapkan air untuk merebus yang sudah diberi garam dan sedikit minyak. \n3.Setelah menunggu sampai agak dingin masukkan tepung kanji, daun bawang lalu uleni. \n4.Jika telah mengkilat, angkat lalu tiriskan. \n5.Bentuk adonan menjadi bulatan dan masukkan pada air yang mendidih. \n6.Terakhir untuk membuat bumbu kacang, blender semua bumbu kacang lalu didihkan sampai kental.\nUrutan pembuatan cilok yang tepat adalah ...', '(1) - (3) - (2) - (5) - (4) - (6)', '(1) - (2) - (3) - (4) - (5) - (6)', '(1) - (2) - (5) - (3) - (4) - (6)', '(1) - (3) - (5) - (3) - (4) - (6)', 'A'),
('BU2.4', 'umum', '2', 'Indonesia', 'Bacalah teks berikut!\n\nPenduduk desa binaan PKK provinsi mulai membajak sawah. Mereka akan menanam padi karena musim hujan sudah hadir. \n\nPenggunaan kata yang tidak tepat pada paragraf di atas adalah ...', 'Binaan', 'Membajak', 'Musim', 'Hadir', 'D'),
('BU2.5', 'umum', '2', 'Indonesia', 'Bacalah kalimat berikut! \n\nKedelai termasuk bahan pangan yang dapat dibuat segala makanan seperti tahu, tempe, dan tauco. \n\nPenggunaan kata yang tidak tepat pada paragraf di atas adalah ...', 'Bahan', 'Pangan', 'Dibuat', 'Segala', 'D'),
('BU6.1', 'Umum', '2', 'English', '"A : Do you have a stamp? \nB : Yes, Here \nA : Thanks. Now I ... go to the post office."', 'must', 'have to', 'don''t have to', 'should', 'C'),
('BU6.2', 'Umum', '2', 'English', 'She was cooking when the phone ...', 'is ringing', 'rang', 'was ringing', 'rings', 'B'),
('BU6.3', 'Umum', '2', 'English', 'The room is air conditioned. Every body ... smoke in it.', 'need not', 'might not', 'must not', 'should not', 'C'),
('BU6.4', 'Umum', '2', 'English', '"Don''t forget to do your home works", the teacher told lma. The indirect sentence of the sentence above is ...', 'to not forget to her home works', 'don''t forget to do my home works', 'not to forget to do her home works', 'not to forget to do my home works', 'C'),
('BU6.5', 'Umum', '2', 'English', '"When the teacher came, the children ...  noise. So the teacher was angry with them."', 'were making', 'was making', 'are making', 'is making', 'A'),
('CPA3.1', 'IPA', '3', 'Fisika', 'Sebuah mobil mula-mula diam. Kemudian mobil itu dihidupkan dan mobil bergerak dengan percepatan tetap 2 m/s^2, setelah mobil bergerak selama 10 s mesinnya dimatikan, mobil mengalami perlambatan tetap dan mobil berhenti 10 s kemudian. Jarak yang masih ditempuh mobil mulai dari saat mesin dimatikan sampai berhenti adalah . . .', '210 m', '200 m', '195 m', '100 m', 'D'),
('CPA3.2', 'IPA', '3', 'Fisika', 'Ditentukan 2 buah vektor yang sama besarnya dengan F. Bila perbandingan antar besar jumlah dan besar selisih kedua vektor sama dengan akar 3, maka sudut yang dibentuk kedua vektor itu adalah ...', '30 derajat', '37 derajat', '45 derajat', '60 derajat', 'D'),
('CPA3.3', 'IPA', '3', 'Fisika', 'Gas ideal dalam suatu ruangan mengalami proses pemuaian secara adiabatik. Pada proses ini ... ', 'dibutuhkan kalor untuk usaha luar', 'suhu gas ideal turun', 'dibutuhkan kalor untuk tambahan energi dalam', 'tekanan gas ideal bertambah', 'B'),
('CPA3.4', 'IPA', '3', 'Fisika', 'Suatu benda bergetar harmonik dengan amplitudo 4 cm dan frekuensi 5 Hz. Saat simpangannya mencapai 2 cm, jika sudut fase awal nol, maka sudut fase getarannya adalah . . .', '30 derajat', '37 derajat', '45 derajat', '60 derajat', 'A'),
('CPA3.5', 'IPA', '3', 'Fisika', 'Tali dengan massa persatuan panjang sebesar 2 gr/m ditegangkan dengan gaya sebesar 320 N. Maka kecepatan bunyi tersebut adalah ....... ', '100 m/s', '200 m/s', '300 m/s', '400 m/s', 'D'),
('CPA4.1', 'IPA', '3', 'Kimia', 'Tekanan pada saat uap dan komponen larutan yang tidak menguap dan berada dalam kesetimbangan disebut...', 'Tekanan uap larutan', 'Tekanan uap jenuh larutan', 'Tekanan parsial', 'Tekanan osmotik', 'B'),
('CPA4.2', 'IPA', '3', 'Kimia', 'Larutan yang mengandung 3 gram zat non elektrolit dalam 100 gram air (Kf air = 1,86 derajat C/m) membeku pada suhu -0,279 derajat C. Massa molekul relatif zat tersebut adalah..."', '200', '95', '300', '100', 'A'),
('CPA4.3', 'IPA', '3', 'Kimia', '"Unsur gas mulia yang bersifat radioaktif sehingga sinar yang dipancarkan dapat digunakan dalam terapi kanker adalah..."', 'Xenon', 'Neon', 'Argon', 'Radon', 'D'),
('CPA4.4', 'IPA', '3', 'Kimia', 'Dibawah ini merupakan kegunaan senyawa yang mengandung unsur Klorin, kecuali...', 'Sebagai bahan pengawet kayu', 'Sebagai elektrolit pengisi baterai', 'Sebagai pupuk untuk tanaman', 'Sebagai bahan pemutih (bleaching agent)', 'A'),
('CPA4.5', 'IPA', '3', 'Kimia', 'Uji biuret yang merupakan uji bagi zat yang mengandung ikatan peptida. Uji ini positif jika hasil pengujian menunjukkan...', 'Warna merah bata', 'Warna biru', 'Warna ungu', 'Warna hitam', 'C'),
('CPA5.1', 'IPA', '3', 'Biologi', 'Makhluk hidup menunjukkan proses pertumbuhan pada peristiwa perubahan biologis, kecuali ….', 'pertambahan volume sel', 'pertambahan jumlah sel', 'bersifat reversible', 'pertambahan ukuran sel', 'C'),
('CPA5.2', 'IPA', '3', 'Biologi', 'Buah semangka tanpa biji dapat kamu peroleh dengan memberikan hormon….', ' sitokinin', 'auksin', 'giberelin', 'etilen', 'C'),
('CPA5.3', 'IPA', '3', 'Biologi', 'Yang termasuk pertumbuhan sekunder adalah pertumbuhan pada bagian-bagian ….', 'xilem sekunder dan floem sekunder', 'ujung akar dan xilem sekunder', 'xilem primer dan floem primer', 'ujung akar dan ujung batang', 'A'),
('CPA5.4', 'IPA', '3', 'Biologi', 'Fungsi fosfor bagi pertumbuhan dan perkembangan tumbuhan adalah….', 'membentuk protein', 'membentuk asam nukleat', 'membentuk dinding sel', 'mengatur keseimbangan ion', 'B'),
('CPA5.5', 'IPA', '3', 'Biologi', 'Contoh hormon sitokinin adalah ….', 'asam indolasetat', 'zeatin', 'asam fenil asetat', 'etepon', 'B'),
('CPS3.1', 'IPS', '3', 'Ekonomi', 'Upaya manusia untuk memanfaatkan semua sumber daya yang dimilikinya untuk mencapai tujuan secara efektif dan efisien adalah pengertian?.', 'Manajemen', 'Organisasi', 'Badan Usaha', 'Prinsip ekonomi', 'A'),
('CPS3.2', 'IPS', '3', 'Ekonomi', 'Yang merupakan tugas dari manajemen tingkat atas adalah?', 'Membuat kebijakan', 'Menginterpretasikan kebijakan yang sudah ada', '?Membuat aturan teknis pelaksanaan', 'Memimpin dalam pekerjaan teknis', 'A'),
('CPS3.3', 'IPS', '3', 'Ekonomi', 'Yang dimaksud dengan badan usaha adalah?', 'Kesatuan yuridis ekonomis yang dalam kegiatannya bertujuan mencari keuntungan', 'Kesatuan yuridis ekonomis yang dalam kegiatannya bertujuan menghasilkan barang/jasa', 'Kesatuan teknis dalam produksi yang tujuan utamanya menghasilkan barang/jasa', 'Kesatuan teknis dalam produksi yang tujuan utamanya mencari keuntungan', 'A'),
('CPS3.4', 'IPS', '3', 'Ekonomi', 'Yang dimaksud dengan simpanan pokok?', 'Sejumlah uang yang sama banyaknya yang wajib dibayarkan oleh anggota koperasi saat masuk menjadi anggota yang tidak dapat diambil sewaktu-waktu', 'Sejumlah uang yang tidak harus sama banyaknya yang wajib dibayarkan oleh anggota koperasi saat masuk menjadi anggota yang tidak dapat diambil sewaktu-waktu', 'Sejumlah uang yang sama banyaknya yang wajib dibayarkan oleh anggota koperasi saat masuk menjadi anggota yang dapat diambil sewaktu-waktu', 'Sejumlah uang yang tidak harus sama banyaknya yang wajib dibayarkan oleh anggota koperasi saat masuk menjadi anggota yang dapat diambil sewaktu-waktu', 'A'),
('CPS3.5', 'IPS', '3', 'Ekonomi', 'Yang termasuk bidang usaha informal adalah?', 'Salon kecantikan', 'Industri pariwisata', 'Pendidikan', 'Rumah sakit', 'A'),
('CPS4.1', 'IPS', '3', 'Geografi', 'Istilah manufaktur dalam pengertian industri secara sempit ditujukan pada kegiatan ...', 'Pengolahan barang mentah menjadi bahan jadi', 'Industri rumah tangga', 'Semua kegiatan ekonomi manusia', 'Pemasaran produksi hasil industri', 'A'),
('CPS4.2', 'IPS', '3', 'Geografi', 'Usaha untuk mengatasi pengaruh hawa dingin pada pertanian sayur dilakukan dengan cara ...', 'Menanam bibit tanaman yang tahan hawa dingin', 'Membuat bangsal-bangsal kaca yang dipanasi', 'Membuat saluran yang mengalirkan air hangat', 'Menyemprotkan hawa panas secara berkala', 'A'),
('CPS4.3', 'IPS', '3', 'Geografi', 'Kurangnya kontak dengan dunia luar akibat sulitnya komunikasi dan transportasi menyebabkan masyarakat desa memiliki sikap ....', 'isolatif', 'homogen', 'individualistis', 'gasselechaft', 'A'),
('CPS4.4', 'IPS', '3', 'Geografi', 'Undang-Undang RI No 22 Tahun 1999 memuat tentang ....', 'pemerintah daerah', 'kawasan perkotaan', 'kawasan perindustrian', 'kawasan bebas rokok', 'A'),
('CPS4.5', 'IPS', '3', 'Geografi', 'Pada pemetaan daerah yang selalu tertutup awan, paling sesuai menggunakan ...', 'citra radar', 'citra satelit', 'foto udara infra merah', 'foto udara pankromatik', 'A'),
('CPS5.1', 'IPS', '3', 'Sejarah', 'Tujuan pembentukan Badan Keamanan Rakyat adalah ....', 'persiapan dalam menghadapi Belanda', 'syarat untuk kelengkapan negara', 'memelihara keamanan dan keselamatan rakyat serta merawat korban perang', 'untuk menghadapi tentara Jepang', 'C'),
('CPS5.2', 'IPS', '3', 'Sejarah', 'Berikut ini yang tidak termasuk tindakan-tindakan sambutan rakyat Indonesia untuk menegakan kedaulatan Indonesia setelah memproklamasikan kemerdekaan adalah ....', 'pembunuhan terhadap tentara Jepang yang masih ada di Indonesia', 'merebut senjata dari Jepang', 'mengambil alih gedung-gedung yang masih dikuasai Jepang', 'membangun pemerintahan', 'A'),
('CPS5.3', 'IPS', '3', 'Sejarah', 'Latar belakang peristiwa Pertempuran Lima Hari di Semarang adalah adanya desas-desus Jepang....', 'menangkapi para pemuda BKR', 'menghalangi para pemuda menyebarkan berita proklamasi', 'membunuh dr. Karyadi', 'meracuni cadangan air minum', 'D'),
('CPS5.4', 'IPS', '3', 'Sejarah', 'Berikut ini yang tidak termasuk latar belakang penolakan Bung Karno dan Bung Hatta atas desakan para pemuda untuk memproklamasikan Kemerdekaan Indonesia secepatnya adalah ....', 'meunggu dahulu pembahasan melalui sidang PPKI', 'cita-cita bangsa Indonesia harus disesuaikan dengan cita-cita Pemerintah Jepang', 'Bung Karno dan Bung Hatta sudah mempunyai rencana lain setelah mendapat panggilan dari Jendral Terauchi?', 'khawatir terjadinya pertumpahan darah dengan bala tentara Jepang', 'B'),
('CPS5.5', 'IPS', '3', 'Sejarah', 'Demi perkembangan demokrasi, BP-KNIP menganjurkan rakyat untuk mendirikan partai-partai politik sebagai pembuktian bahwa demokrasi rakyat dijamin eksistensinya oleh Pemerintah RI. Hal ini diusulkan dalam sidang BP-KNIP dan disetujui oleh presiden maka keluarlah ....', 'Dekrit Presiden 5 Juli 1959', '?Maklumat Pemerintah tanggal 3 November 1945', 'Maklumat Pemerintah tanggal 5 Oktober 1945', 'Maklumat Wakil Presiden No. X Tanggal 16 Oktober 1945', 'B'),
('CU1.1', 'Umum', '3', 'Matematika', 'Diketahui f(x) =(2x+4)/(1+(akar x)). Nilai f''(4) = ...', '1/3', '3/7', '3/5', '1', 'A'),
('CU1.2', 'Umum', '3', 'Matematika', 'Luas sebuah kotak tanpa tutup yang alasnya persegi adalah 432 cm^2. Agar volume kotak tersebut mencapai maksimum, maka panjang rusuk persegi adalah ... cm.', '16', '12', '10', '8', 'B'),
('CU1.3', 'Umum', '3', 'Matematika', 'Grafik fungsi f(x) = x^3 + ax^2 + bx + c hanya turun pada interval -1 < x < 5. Nilai a + b = ?', '-21', '-9', '9', '21', 'A'),
('CU1.4', 'Umum', '3', 'Matematika', 'Diketahui f(x) = (3x+4)^4 dan f''(x) adalah turunan pertama dari f(x). Maka nilai dari f''(-1) = ...', '4', '12', '16', '84', 'B'),
('CU1.5', 'Umum', '3', 'Matematika', 'Seseorang mengendarai mobil dari kota P ke kota Q dengan kecepatan 120 km/jam dalam waktu 5/6 jam. Jika pulangnya ditempuh dalam waktu 5/3 jam maka kecepatan mobilnya adalah... km/jam.', '40', '50', '60', '70', 'C'),
('CU2.1', 'umum', '3', 'Indonesia', 'Bacalah kutipan karya tulis berikut ini! \n\nManusia dalam kehidupannya tidak dapat melepaskan diri dari teknologi, baik yang sederhana maupun yang mutakhir. Pada era modernisasi, teknologi memberikan sumbangan yang begitu besar. Namun, banyak pula akibat buruk yang diperoleh dari dampak teknologi. Oleh karena itu, perlu diciptakan teknologi yang manusiawi, yaitu teknologi yang mampu mengembangkan harkat dan martabat manusia. \n\nDalam karya tulis ilmiah, uraian di atas merupakan bagian ...', 'Tujuan Penulisan', 'Landasan Teori', 'Latar belakang masalah', 'Pembatasan masalah', 'C'),
('CU2.2', 'umum', '3', 'Indonesia', '"Bacalah paragraf berikut dengan saksama! \n\nTenaga kerja yang menjadi andalan pada masa pembangunan ini adalah tenaga kerja yang memiliki profesionalisme, mandiri, an kreatif. Namun, kenyataannya perbandingan penawaran tenaga kerja lebih besar daripada lapangan kerja yang tersedia. Seharusnya sejak pendidikan formal di SD, anak didik sudah diarahkan? \n\nKalimat yang tepat untuk melanjutkan paragraf di atas adalah...', 'ke arah yang lebih baik lagi', 'untuk menjadi manusia terampil, ahli di bidangnya, dan mampu menciptakan lapangan kerja baru, sehingga mereka menjadi manusia mandiri', 'untuk masuk ke sekolah yang jenjang pendidikannnya lebih terarah', 'untuk menjadi calon tenaga kerja yang bersedia ditempatkan di dalam dan luar negeri', 'B'),
('CU2.3', 'umum', '3', 'Indonesia', 'Bacalah kalimat-kalimat berikut dengan saksama! \n\n(1) Budaya jalan pintas adalah manifestasi etos kerja yang kurang baik. \n(2) Seseorang yang memiliki etos kerja yang baik selalu mempunyai kemauan yang kuat untuk menghasilkan yang terbaik salam pekerjaannya. \n(3) Ada orang yang memiliki etos kerja yang baik dan ada pula yang kurang baik. \n(4) Sebaliknya, orang yang memiliki etos kerja yang kurang baik selalu mempunyai keinginan untuk mencari jalan termudah dalam melaksanakan suatu pekerjaan. \n\nKeempat kalimat di atas dapat disusun menjadi paragraf yang baik dengan urutan...', '3 - 2 - 4 - 1', '2 - 3 - 1 - 4', '4 - 2 - 3 - 1', '1 - 4 - 3 - 2', 'A'),
('CU2.4', 'umum', '3', 'Indonesia', 'Bacalah dengan saksama paragraf rumpang berikut ini! \n\nTerakhir, profesionalisme sumber daya manusia sangat penting. Kerja intelejen harus jernih, objektif, dan akurat. Lembaga intelejen harus terbebas dari afiliasi partai politik agar bisa netral. ... \n\nKalimat penutup yang berisi ajakan dan penekanan yang tepat untuk melengkapi paragraf di atas adalah...', 'Marilah kita usahakan agar badan intelejen tersebut kita jaga kenetralitasannya.', 'Oleh karena itu, sistem rekruitmen harus diubah, termasuk pola pembinaan dan pendidikan.', 'Tentu saja sistem pembinaan dan pola pendidikan intelejen harus bebas dari pengaruh politik.', 'Harapan kita, intelejen harus bisa bekerja secara maksimal.', 'B'),
('CU2.5', 'umum', '3', 'Indonesia', 'Mudah mencampuri urusan orang lain merupakan perbuatan tidak terpuji. Dan kita akan tersisih apabila orang lain tersebut bersanak saudara. Peribahasa yang tepat sesuai dengan pernyataan diatas adalah...', 'Air sama air kelak menjadi satu, sampah itu ke tepi juga', 'Seperti biduk dikayuh hilir', 'Terkatung-katung macam biduk patah kemudi', 'Terkusut-kusut sebagai anak tidak diaku', 'A'),
('CU6.1', 'Umum', '3', 'English', '"Nadia : Hey, Adi. Do you have any plans for tomorrow.\nAdi : No. ... Why?"', 'I''m planning on mountain climbing.', 'Nothing''s come up yet.', 'I''m thinking of going to Mount Salak', 'Maybe you can go camping', 'B'),
('CU6.2', 'Umum', '3', 'English', '"Ari : Hi, Ari Do you know about the weather for tomorrow? \nAdi : ... it''s going to be hot and sunny."', 'I predict', 'The plan is', 'I''m planning', 'What I''m saying is', 'A'),
('CU6.3', 'Umum', '3', 'English', 'Bob is in the class today. He ... in class yesterday too', 'was', 'is', 'does', 'did', 'A'),
('CU6.4', 'Umum', '3', 'English', 'Mr. Rice is a police officer.  ... busy every day.', 'him', 'he is', 'his', 'he', 'B'),
('CU6.5', 'Umum', '3', 'English', '"A: Will you be here by seven o''clock? \nB: It?s hard to say. Maybe I ... there a little late."', 'will be ', 'am going', 'going to be', 'will', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `nama` varchar(30) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `notelportu` varchar(20) NOT NULL,
  `pekerjaanortu` varchar(30) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `sekolah` varchar(30) NOT NULL,
  `noinduk` varchar(20) NOT NULL,
  `jurusan` varchar(10) NOT NULL,
  `kelas` varchar(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(20) NOT NULL,
  `langganan` varchar(10) NOT NULL,
  `done` tinyint(1) NOT NULL,
  `tglpartisipasi` datetime DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`nama`, `alamat`, `notelportu`, `pekerjaanortu`, `notelp`, `sekolah`, `noinduk`, `jurusan`, `kelas`, `username`, `password`, `langganan`, `done`, `tglpartisipasi`) VALUES
('Eka Cantique', 'SDA', '', '', 'ada deh', 'kepo', '940130', 'IPA', '1', '940130', '123456', 'sudah', 1, '2017-10-17 10:08:34'),
('aaaaaaaaaaaaaaa', 'sfsgsdsd', '', '', 'asafaf', 'sfsdfsdfsf', 'fsdfsdfsfsdf', 'IPA', '1', 'aaa', 'aaa', 'sudah', 1, '2017-10-17 18:23:26'),
('', '', '', '', '', '', '322', 'IPA', '2', 'admin', 'lalala', '', 1, '2017-10-23 09:31:23'),
('sasfaf', 'sdfsdfsf', 'sdfsdfsfew', 'sfsdsf', 'sdfsdfs', 'SMA NEGERI 1 TANGGUL', 'sfsdfsf', 'IPS', '2', 'fsdfwefw', 'sdfsdfsdfsdf', 'sudah', 0, NULL),
('sad', 'sjsdivbi', 'jsijvsin', 'cnsdkjvksj', 'ksjvsb', 'SMK NEGERI 1 JEMBER', 'svjbsub', 'IPA', '1', 'orgjrjeoj', 'dvdknvidknv', 'sudah', 0, NULL),
('asdasdasd', 'asdasdasd', '', '', 'aasdasda', 'asasdasdasd', '420', 'IPS', '3', 'www', 'www', 'sudah', 1, '2017-10-15 23:05:03');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
