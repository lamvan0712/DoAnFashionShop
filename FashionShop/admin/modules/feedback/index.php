<?php 
    $open ="feedback";  
    require_once __DIR__."/../../autoload/autoload.php";
    
    if (isset($_GET['page'])) {
        $p = $_GET['page'];
        if ($p == 0) $p = 1;
      } else {
        $p = 1;
      }
    $sql = "SELECT feedback.* FROM feedback ORDER BY ID DESC ";
    
    $admin = $db->fetchJone("feedback",$sql,$p,5,true);
    
    if (isset($admin['page']))
    {
       $sotrang = $admin['page'];
       unset($admin['page']);
    }
    ?>
<?php  require_once __DIR__. "/../../layouts/header.php"; ?>
<div id="layoutSidenav_content">
<main>
<div class="container-fluid">
<h1 class="mt-4">Phản hồi khách hàng
</h1>
<ol class="breadcrumb mb-4">
    <li class="breadcrumb-item"><a href="index.php">Dashboard</a></li>
    <li class="breadcrumb-item active">Phản hồi</li>
</ol>
<div class="card mb-4">
    <div class="clearfix"></div>
    <?php if(isset($_SESSION['success'])) :?>
    <div class="alert alert-success" role="alert">
        <?php echo $_SESSION['success'];unset($_SESSION['success']); ?>
    </div>
    <?php endif; ?>
    <?php if(isset($_SESSION['error'])) :?>
    <div class="alert alert-danger" role="alert">
        <?php echo $_SESSION['error'];unset($_SESSION['error']); ?>
    </div>
    <?php endif; ?>
    <table class="table table-bordered dataTable" id="dataTable" width="100%" cellspacing="0" role="grid" aria-describedby="dataTable_info" style="width: 100%;">
        <thead>
            <tr role="row">
                <th class="sorting_asc" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-sort="ascending" aria-label="Name: activate to sort column descending" style="width: 5%;">Stt</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 20%;">Tên khách hàng</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Position: activate to sort column ascending" style="width: 15%;">Email</th>
                
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 20%;">Tiêu đề</th>
                <th class="sorting" tabindex="0" aria-controls="dataTable" rowspan="1" colspan="1" aria-label="Salary: activate to sort column ascending" style="width: 30%;">Nội dung</th>
            </tr>
        </thead>
        <tbody>
            <?php $stt =1 ; foreach($admin as $item): ?> 
            <tr role="row" class="odd">
                <td><?php echo $stt ?></td>
                <td><?php echo $item['name'] ?></td>
                <td><?php echo $item['email'] ?></td>
                
                
                <td><?php echo $item['content'] ?></td>
                <td> <a class="btn btn-xs btn-danger" href="delete.php?id= <?php echo $item['id'] ?>"> <i class="fa fa-times"></i>Xóa</a> </td>
            </tr>
            <?php  $stt++ ; endforeach ?> 
        </tbody>
    </table>
    <nav aria-label="Page navigation example">
        <ul class="pagination justify-content-center mt-3">
        <li class="page-item">
            <a class="page-link" href="?page=<?php echo --$p ?>" aria-label="<<">
            <span aria-hidden="true">&laquo;</span>
            </a>
        </li>
        <?php for ($i = 1; $i <= $sotrang; $i++) : ?>
            <?php
            if (isset($_GET['page'])) {
            $p = $_GET['page'];
            if ($p == 0) $p = 1;
            } else {
            $p = 1;
            }
            if ($sotrang < $p) $p = $sotrang;

            ?>
            <li class="page-item <?php echo ($i == $p) ? 'active' : '' ?>">
            <a class="page-link" href="?page= <?php echo $i; ?>"><?php echo $i; ?></a>
            </li>
        <?php endfor; ?>
        <li class="page-item">
            <a class="page-link" href="?page=<?php echo ++$p ?>" aria-label=">>">
            <span aria-hidden="true">&raquo;</span>
            </a>
        </li>
        </ul>
    </nav>
</div>
<?php  require_once __DIR__. "/../../layouts/footer.php"; ?>