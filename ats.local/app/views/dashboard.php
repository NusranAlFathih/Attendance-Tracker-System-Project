<?php
$title = "Dashboard";
ob_start();
?>
<div class="container mt-4">
    <h2>Dashboard</h2>
    <p>This is the dashboard page content.</p>

    <!-- Filters -->
    <div class="row mb-3">
        <div class="col-md-3">
            <label for="subjectFilter" class="form-label">Filter by Subject</label>
            <select id="subjectFilter" class="form-select">
                <option value="" selected>All Subjects</option>
                <?php if (!empty($subjects)): ?>
                    <?php foreach ($subjects as $index => $subject): ?>
                    <option value="<?= $subject["subject_id"] ?>"><?= $subject["subject_name"] ?></option>
                    <?php endforeach; ?>
                <?php endif; ?>
            </select>
        </div>
        <div class="col-md-3">
            <label for="dateFilterStart" class="form-label">Start Date</label>
            <input type="date" id="dateFilterStart" class="form-control">
        </div>
        <div class="col-md-3">
            <label for="dateFilterEnd" class="form-label">End Date</label>
            <input type="date" id="dateFilterEnd" class="form-control">
        </div>
        <div class="col-md-3 d-flex align-items-end">
            <button id="filterBtn" class="btn btn-primary w-100">Apply Filters</button>
        </div>
    </div>

    <!-- Attendance Table -->
    <table id="attendanceTable" class="table table-striped">
        <thead class="table-dark">
            <tr>
                <th>#</th>
                <th>Registration Number</th>
                <th>Name</th>
                <th>Present Days</th>
                <th>Total Days</th>
                <th>Attendance %</th>
            </tr>
        </thead>
        <tbody>
            <?php if (!empty($students)): ?>
                <?php foreach ($students as $index => $student): ?>
                    <tr>
                        <td><?= $index + 1; ?></td>
                        <td><?= htmlspecialchars($student['registration_number']); ?></td>
                        <td><?= htmlspecialchars($student['name']); ?></td>
                        <td><?= $student['present_days']; ?></td>
                        <td><?= $student['total_days']; ?></td>
                        <td><?= number_format($student['percentage'], 2); ?>%</td>
                    </tr>
                <?php endforeach; ?>
            <?php else: ?>
                <tr>
                    <td colspan="6" class="text-center">No records found</td>
                </tr>
            <?php endif; ?>
        </tbody>
        <tfoot>
            <tr>
                <td colspan="6">
                    <div class="pagination-container d-flex justify-content-between">
                        <div class="d-flex w-25">
                            <select id="limitSelect" oninput="updateLimit(event)" class="form-select w-25" aria-label="Rows Per Page">
                                <option value="10">10</option>
                                <option value="25">25</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                                <option value="all">All</option>
                            </select>
                            <span>Rows per page</span>
                        </div>
                        <div id="paginationControls">
                            <span id="previousPage" class="pagination-btn" onclick="changePage('previous')">Previous</span>
                            <span id="pageNumbers"><?= $totalPages ?></span>
                            <span id="nextPage" class="pagination-btn" onclick="changePage('next')">Next</span>
                        </div>
                    </div>
                </td>
            </tr>
        </tfoot>
    </table>
</div>


<?php
$content = ob_get_clean();
include(ROOT_DIR . '/app/views/layouts/main.php');
?>
