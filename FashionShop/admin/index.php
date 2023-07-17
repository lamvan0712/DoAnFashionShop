<?php
require_once __DIR__ . '/autoload/autoload.php';
$category = $db->fetchAll("category");
$sql = "SELECT product.*FROM product";
$totalProduct = count($db->fetchsql($sql));

$sql2 = "SELECT category.*FROM category";
$totalCategory = count($db->fetchsql($sql2));

$sql3 = "SELECT users.*FROM users";
$totalUser = count($db->fetchsql($sql3));
$sql4 = "SELECT transaction.*, users.name as nameuser, users.phone as phoneuser,users.address as addressuser FROM transaction LEFT JOIN users ON users.id = transaction.users_id ORDER BY ID DESC LIMIT 5";
$orders = $db->fetchsql($sql4);
$sql5 = "SELECT feedback.* FROM feedback ORDER BY ID DESC LIMIT 5";
$feedbacks = $db->fetchsql($sql5);

?>
<?php require_once __DIR__ . '/layouts/header.php'; ?>
<div class="container-fluid">
    <div class="row d-flex mb-5">
        <p style="font-weight:700">Thống kê</p>
        <div class="col-lg-4">
            <div class="p-5 border">
                <p style="font-weight:700">Sản phẩm</p>
                <span class="d-block"><?= $totalProduct ?></span>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="p-5 border">
                <p style="font-weight:700">Danh mục</p>
                <span class="d-block"><?= $totalCategory ?></span>
            </div>
        </div>
        <div class="col-lg-4">
            <div class="p-5 border">
                <p style="font-weight:700">Thành viên</p>
                <span class="d-block"><?= $totalUser ?></span>
            </div>
        </div>
    </div>
    <div class="row d-flex">
    <div class="col-lg-7">
        <p style="font-weight:700">Đơn hàng mới</p>
        <table class="table border">
            <thead>
                <tr class="bg-dark text-white">
                    <th scope="col">Họ tên</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Ngày mua</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($orders as $order):?>
                    <tr>
                        <td><?= $order['nameuser'] ?></td>
                        <td><?= $order['addressuser']?></td>
                        <td><?= $order['created_at']?></td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
    <div class="col-lg-5">
        <p style="font-weight:700">Phản hồi</p>
        <table class="table border">
            <thead>
                <tr class="bg-dark text-white">
                    <th scope="col">Họ tên</th>
                    <th scope="col">Địa chỉ</th>
                    <th scope="col">Ngày mua</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($feedbacks as $feedback):?>
                    <tr>
                        <td><?= $feedback['name'] ?></td>
                        <td><?= $feedback['content']?></td>
                        <td><?= $feedback['created_at']?></td>
                    </tr>
                <?php endforeach ?>
            </tbody>
        </table>
    </div>
    </div>
</div>
</div>
</div>
<?php require_once __DIR__ . '/layouts/footer.php'; ?>
