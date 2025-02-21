<?php
require_once ROOT_DIR . "/core/Database.php";
require ROOT_DIR . "/app/models/Subject.php";
require ROOT_DIR . "/app/models/Student.php";
require ROOT_DIR . "/app/models/Attendance.php";

class AttendanceController {
    public function showForm() {
        $pdo = Database::getInstance();
        $subjects = Subject::getAll();
        
        // Get students if subject is selected
        $students = [];
        if (isset($_GET['subject_id'])) {
            $students = Student::getAllBySubject($_GET['subject_id']);
        }

        require_once '../app/views/attendance_form.php';
    }

    public function saveAttendance() {
        echo($_POST['subject_id']);
        if (isset($_POST['attendance']) && isset($_POST['subject_id'])) {
            $subjectId = $_POST['subject_id'];
            $attendanceData = $_POST['attendance'];
            $date = date('Y-m-d');

            echo "Controller Is Working";

            // Loop through the attendance data and save each entry
            foreach ($attendanceData as $studentId => $status) {
                Attendance::save($studentId, $subjectId, $status, $date);
            }

            header("Location: /attendance?subject_id=$subjectId&success=1");
            exit;
        } else {
            // header("Location: /attendance?subject_id={$_POST['subject_id']}&error=1");
            exit;
        }
    }
}