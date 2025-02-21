<?php
require_once ROOT_DIR . "/core/Database.php";
require ROOT_DIR . "/app/models/Subject.php";

class DashboardController {
    public function showDashboard() {
        $pdo = Database::getInstance();
        $subjects = Subject::getAll();

        // Get filters from the request (default: last 7 days)
        $subjectId = isset($_GET['subject_id']) ? (int) $_GET['subject_id'] : null;
        $startDate = $_GET['start_date'] ?? date('Y-m-d', strtotime('-7 days'));
        $endDate = $_GET['end_date'] ?? date('Y-m-d');
        
        // Pagination settings
        $limit = isset($_GET['limit']) ? (int) $_GET['limit'] : 10;
        $page = isset($_GET['page']) ? (int) $_GET['page'] : 1;
        $offset = ($page - 1) * $limit;

        $sql = "
            SELECT SQL_CALC_FOUND_ROWS
                s.student_id,
                s.registration_number,
                s.name,
                COUNT(a.status) AS total_days,
                SUM(a.status = 'present') AS present_days,
                (SUM(a.status = 'present') / COUNT(a.status)) * 100 AS percentage
            FROM students s
            JOIN attendance a ON s.student_id = a.student_id
            WHERE a.date BETWEEN :start_date AND :end_date
        ";

        if ($subjectId) {
            $sql .= " AND a.subject_id = :subject_id";
        }

        $sql .= " GROUP BY s.student_id LIMIT :offset, :limit";

        $stmt = $pdo->prepare($sql);

        // Bind parameters
        $stmt->bindValue(':start_date', $startDate, PDO::PARAM_STR);
        $stmt->bindValue(':end_date', $endDate, PDO::PARAM_STR);
        if ($subjectId) {
            $stmt->bindValue(':subject_id', $subjectId, PDO::PARAM_INT);
        }
        $stmt->bindValue(':offset', $offset, PDO::PARAM_INT);
        $stmt->bindValue(':limit', $limit, PDO::PARAM_INT);

        $stmt->execute();
        $students = $stmt->fetchAll(PDO::FETCH_ASSOC);

        $totalRows = $pdo->query("SELECT FOUND_ROWS()")->fetchColumn();
        $totalPages = ceil($totalRows / $limit);

        require_once ROOT_DIR . '/app/views/dashboard.php';
    }
}
