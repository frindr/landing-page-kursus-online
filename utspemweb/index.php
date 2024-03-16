<?php include_once("header.php")?>

    <style>
        .kartu-tutor:hover {
            transform: scale(1.1);
            opacity: 0.5;
            transition: all .3s ease-in-out;
        }
        .kartu-partner:hover {
            transform: scale(1.1);
            opacity: 0.5;
            transition: all .3s ease-in-out;
        }
    </style>

        <!-- untuk home -->
        <section id="home">
            <img src="<?php echo ambil_gambar('2')?>"/>
            <div class="kolom">
                <p class="deskripsi"><?php echo ambil_kutipan('2') ?></p>
                <h2><?php echo ambil_judul('2') ?></h2>
                <?php echo maximum_kata(ambil_isi('2'), 50) ?>
                <p><a href="pendaftaran.php" class="tbl-biru">Daftar Sekarang Juga</a></p>
                <br>
            </div>
        </section>

        <!-- untuk courses -->
        <section id="courses">
            <div class="kolom">
                <p class="deskripsi"><?php echo ambil_kutipan('3') ?></p>
                <h2><?php echo ambil_judul('3') ?></h2>
                <?php echo maximum_kata(ambil_isi('3'),30) ?>
                <p><a href="<?php echo buat_link_halaman('3')?>" class="tbl-biru">Pelajari Lebih Lanjut</a></p>
            </div>
            <img src="<?php echo ambil_gambar('3')?>"/>
        </section>

        <!-- untuk tutors -->
        <section id="tutors">
            <div class="tengah">
                <div class="kolom">
                    <p class="deskripsi">Our Top Tutors</p>
                    <h2>Tutors</h2>
                    <p>Tutor kami adalah para ahli di bidangnya dan siap membimbing Anda menuju kesuksesan!</p>
                </div>

                <div class="tutor-list">
                    <?php
                        $sql1 = "select * from tutors order by id asc";
                        $q1 = mysqli_query($koneksi, $sql1);
                        while($r1 = mysqli_fetch_array($q1)) {
                    ?>
                        <div class="kartu-tutor">
                            <a href="<?php echo buat_link_tutors($r1['id']) ?>">
                                <img src="<?php echo url_dasar() . "/gambar/" . tutors_foto($r1['id']) ?>" />
                                <p><?php echo $r1['nama'] ?></p>
                            </a>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </section>

        <!-- untuk partners -->
        <section id="partners">
            <div class="tengah">
                <div class="kolom">
                    <p class="deskripsi">Our Top Partners</p>
                    <h2>Partners</h2>
                    <p>Kami bangga memiliki mitra-mitra luar biasa yang membantu kami memberikan pengalaman belajar terbaik untuk Anda!</p>
                </div>

                <div class="partner-list">
                    <?php
                        $sql1 = "select * from partners order by id asc";
                        $q1 = mysqli_query($koneksi, $sql1);
                        while ($r1 = mysqli_fetch_assoc($q1)) {
                    ?>
                        <div class="kartu-partner">
                            <a href="<?php echo buat_link_partners($r1['id'])?>">
                                <img src="<?php echo url_dasar()."/gambar/".partners_foto($r1['id'])?>"/>
                            </a>
                        </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </section>

<?php include_once("footer.php")?>    