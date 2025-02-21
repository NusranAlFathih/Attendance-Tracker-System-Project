<?php
$title = "Dashboard";
ob_start();
?>
<div class="container">
    <h2>Attendance</h2>
    <p>This is the attendance page content.</p>

    <form method="post">
        <select id="subject" name="subject_id" oninput="loadStudents(event)" class="form-select mb-2">
            <option value="" selected>Select The Subject</option>
            <?php foreach ($subjects as $subject): ?>
            <option value="<?= $subject['subject_id'] ?>"><?= $subject['subject_name'] ?></option>
            <?php endforeach; ?>
        </select>

        <?php if (!empty($students)): ?>
        <table class="table table-striped">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Registration Number</th>
                    <th>Name</th>
                    <th>Attendance</th>
                </tr>
            </thead>
            <?php foreach ($students as $index => $student): ?>
            <tr>
                <td><?= $index + 1; ?></td>
                <td><?= htmlspecialchars($student['registration_number']); ?></td>
                <td><?= htmlspecialchars($student['name']); ?></td>
                <td>
                    <input type="radio" name="attendance[<?= $student['student_id'] ?>]" value="present" required> Present
                    <input type="radio" name="attendance[<?= $student['student_id'] ?>]" value="absent"> Absent
                </td>
            </tr>
            <?php endforeach; ?>
        </table>
        <div class="d-flex justify-content-end">
            <button type="submit" class="btn btn-primary">Save Attendance</button>
        </div>
        <?php endif; ?>
    </form>
</div>

<?php
$content = ob_get_clean();
include(ROOT_DIR . '/app/views/layouts/main.php');
?>
