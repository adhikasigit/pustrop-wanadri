<!DOCTYPE html>
<html lang="en">
<?php 
  mysql_connect("localhost","root","");
  @mysql_select_db("pustrop_si") or die( "Unable to select database");
  $query = "SELECT * FROM penjualan";
  $result = mysql_query($query);
  $jumpenjualan = mysql_numrows($result);
?>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

    <title>Pustaka Tropis WANADRI</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">
    <!--external css-->
    <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
        
    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/style-responsive.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

  <section id="container" >
      <!-- **********************************************************************************************************************************************************
      TOP BAR CONTENT & NOTIFICATIONS
      *********************************************************************************************************************************************************** -->
      <!--header start-->
      <header class="header black-bg">
              <div class="sidebar-toggle-box">
                  <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
              </div>
            <!--logo start-->
            <a href="index.html" class="logo"><b>PUSTROP WANADRI</b></a>
            <!--logo end-->
            <div class="top-menu">
              <ul class="nav pull-right top-menu">
                    <li><a class="logout" href="login.html">Logout</a></li>
              </ul>
            </div>
        </header>
      <!--header end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN SIDEBAR MENU
      *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <aside>
          <div id="sidebar"  class="nav-collapse ">
              <!-- sidebar menu start-->
              <ul class="sidebar-menu" id="nav-accordion">
              
                  <p class="centered"><a href="profile.html"><img src="assets/img/ui-sam.jpg" class="img-circle" width="60"></a></p>
                  <h5 class="centered">Administrator</h5>
                    
                  <li class="mt">
                      <a href="index.html">
                          <i class="fa fa-dashboard"></i>
                          <span>Dashboard</span>
                      </a>
                  </li>

                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-book"></i>
                          <span>Buku</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="tambah_buku.php">Tambah Buku</a></li>
                          <li><a  href="katalog_buku.php">Katalog Buku</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-user"></i>
                          <span>Keanggotaan</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="tambah_anggota.php">Tambah Anggota</a></li>
                          <li><a  href="daftar_anggota.php">Daftar Anggota</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-shopping-cart"></i>
                          <span>Supplier</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="tambah_supplier.php">Tambah Supplier</a></li>
                          <li><a  href="daftar_supplier.php">Daftar Supplier</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a href="javascript:;" >
                          <i class="fa fa-list-alt"></i>
                          <span>Peminjaman</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="formulir_peminjaman.php">Formulir Peminjaman</a></li>
                          <li><a  href="formulir_pengembalian.php">Formulir Pengembalian</a></li>
                          <li><a  href="daftar_peminjaman.php">Daftar Peminjaman</a></li>
                      </ul>
                  </li>
                  <li class="sub-menu">
                      <a class="active" href="javascript:;" >
                          <i class="fa fa-usd"></i>
                          <span>Penjualan</span>
                      </a>
                      <ul class="sub">
                          <li><a  href="formulir_penjualan.php">Formulir Penjualan</a></li>
                          <li class="active"><a  href="daftar_penjualan.php">Daftar Penjualan</a></li>
                      </ul>
                  </li>
              </ul>
              <!-- sidebar menu end-->
          </div>
      </aside>
      <!--sidebar end-->
      
      <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
      <!--main content start-->
      <section id="main-content">
          <section class="wrapper site-min-height">
            <h3><i class="fa fa-angle-right"></i> Daftar Penjualan</h3>
            <div class="row mt">
            <form method="post" action="del_penjualan.php">
              <div class="col-lg-12">
                <div class="col-md-12 mt">
                      <div class="content-panel">
                            <table class="table table-hover">
                            <h4><i class="fa fa-angle-right"></i> Tabel Daftar Penjualan</h4>
                            <hr>
                                <thead>
                                <tr>
                                    <th></th>
                                    <th></th>
                                    <th>ID Penjualan</th>
                                    <th>Kode Barang</th>
                                    <th>Tanggal Jual</th>
                                    <th>No Anggota</th>
                                     <?php 
                                for($i=0 ; $i<$jumpenjualan ; $i++){
                                  $id = mysql_result($result,$i,"id_penjualan");
                                  $barang = mysql_result($result,$i,"id_barang");
                                  $tanggal = mysql_result($result,$i,"tanggal_jual");
                                  $pembeli = mysql_result($result,$i,"id_pembeli");
                                ?>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                  <td>
                                      <input type="checkbox" id="check<?php echo $i; ?>" name="check<?php echo $i; ?>" value="<?php echo $id; ?>">
                                    </td>
                                    <td>
                                      <a href="#" data-toggle="modal" data-target="#editModal" data-whatever="">
                                        <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
                                      </a>
                                    </td>
                               <?php
                                      echo '<td>'.$id.'</td>';
                                      echo '<td>'.$barang.'</td>';
                                      echo '<td>'.$tanggal.'</td>';
                                      echo '<td>'.$pembeli.'</td>';
                                    }
                                    ?>
                                </tr>
                                </tbody>
                            </table>
                            <input type="hidden" id="sum" name="sum" value="<?php echo $jumpenjualan; ?>">
                            <input type="submit" value="HAPUS" class="btn btn-primary" onclick="return confirm('apakah anda yakin?');">
                        </div><! --/content-panel -->
                    </div><!-- /col-md-12 -->
              </div>
            </div>
      
    </section><! --/wrapper -->
      </section><!-- /MAIN CONTENT -->

      <!--main content end-->
      <!--footer start-->
      <footer class="site-footer">
          <div class="text-center">
              2015 - Pustaka Tropis WANADRI
              <a href="blank.html#" class="go-top">
                  <i class="fa fa-angle-up"></i>
              </a>
          </div>
      </footer>
      <!--footer end-->
  </section>

    <!-- js placed at the end of the document so the pages load faster -->
    <script src="assets/js/jquery.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/jquery-ui-1.9.2.custom.min.js"></script>
    <script src="assets/js/jquery.ui.touch-punch.min.js"></script>
    <script class="include" type="text/javascript" src="assets/js/jquery.dcjqaccordion.2.7.js"></script>
    <script src="assets/js/jquery.scrollTo.min.js"></script>
    <script src="assets/js/jquery.nicescroll.js" type="text/javascript"></script>


    <!--common script for all pages-->
    <script src="assets/js/common-scripts.js"></script>

    <!--script for this page-->
    
  <script>
      //custom select box

      $(function(){
          $('select.styled').customSelect();
      });

  </script>

  <!-- Modal -->

    <script>
    $('#editModal').on('show.bs.modal', function (event) {
        var button = $(event.relatedTarget) // Button that triggered the modal
        var recipient = button.data('whatever') // Extract info from data-* attributes
        // If necessary, you could initiate an AJAX request here (and then do the updating in a callback).
        // Update the modal's content. We'll use jQuery here, but you could use a data binding library or other methods instead.
        var modal = $(this)
        modal.find('.modal-title').text('Ubah Anggota')
        modal.find('.modal-body input').val()
    })
    </script>


  </body>
</html>
