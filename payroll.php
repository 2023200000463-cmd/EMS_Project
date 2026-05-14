<?php
include 'db.php';
?>

<!DOCTYPE html>
<html>

<head>
    <title>Payroll Report</title>
    <link rel="stylesheet" href="style.css">
</head>

<body>

<h2>Payroll Management Report</h2>

<table>

<tr>
    <th>Employee Name</th>
    <th>Month</th>
    <th>Net Salary</th>
    <th>Status</th>
</tr>

<?php

$query = "
SELECT e.emp_name,
p.pay_month,
p.net_salary,
p.payment_status
FROM payroll p
INNER JOIN employees e
ON p.emp_id = e.emp_id
";

$result = mysqli_query($conn, $query);

while($row = mysqli_fetch_assoc($result))
{
?>

<tr>
    <td><?php echo $row['emp_name']; ?></td>
    <td><?php echo $row['pay_month']; ?></td>
    <td><?php echo $row['net_salary']; ?></td>
    <td><?php echo $row['payment_status']; ?></td>
</tr>

<?php
}
?>

</table>

</body>
</html>