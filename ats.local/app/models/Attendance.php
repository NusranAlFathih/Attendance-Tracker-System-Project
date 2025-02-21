<?php
class Attendance {
    public static function save($studentId, $subjectId, $status, $date) {
        $pdo = Database::getInstance();

        // Check if attendance already exists for the student, subject, and date
        $stmt = $pdo->prepare("SELECT * FROM attendance WHERE student_id = :student_id AND subject_id = :subject_id AND date = :date");
        $stmt->execute([
            ':student_id' => $studentId,
            ':subject_id' => $subjectId,
            ':date' => $date
        ]);
        
        // If attendance record exists, update it
        if ($stmt->rowCount() > 0) {
            $stmt = $pdo->prepare("UPDATE attendance SET status = :status WHERE student_id = :student_id AND subject_id = :subject_id AND date = :date");
            $stmt->execute([
                ':status' => $status,
                ':student_id' => $studentId,
                ':subject_id' => $subjectId,
                ':date' => $date
            ]);
        } else {
            // If attendance record doesn't exist, insert a new one
            $stmt = $pdo->prepare("INSERT INTO attendance (student_id, subject_id, date, status) VALUES (:student_id, :subject_id, :date, :status)");
            $stmt->execute([
                ':student_id' => $studentId,
                ':subject_id' => $subjectId,
                ':date' => $date,
                ':status' => $status
            ]);
        }
    }
}
