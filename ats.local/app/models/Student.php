<?php
class Student {
    public static function getAllBySubject($subjectId) {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare("
            SELECT s.* 
            FROM students s
            JOIN enrollments e ON s.student_id = e.student_id
            WHERE e.subject_id = ?
        ");
        $stmt->execute([$subjectId]);
        return $stmt->fetchAll();
    }
}