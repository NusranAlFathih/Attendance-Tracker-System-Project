<?php
require_once __DIR__ . '/../config.php';

class Router {
    public static function route($path) {
        $action = $_GET['action'] ?? 'attendance';
        
        switch($path) {               
            case '/':
                require_once ROOT_DIR . '/app/controllers/DashboardController.php';
                $controller = new DashboardController();
                $controller->showDashboard();
                break;
            
            case '/attendance':
                if ($_SERVER['REQUEST_METHOD'] === 'POST') {
                    // Handle POST request for attendance
                    require_once ROOT_DIR . '/app/controllers/AttendanceController.php';
                    $controller = new AttendanceController();
                    echo "Router Is Working";
                    $controller->saveAttendance();
                } else {
                    // Handle GET request for the attendance form
                    require_once ROOT_DIR . '/app/controllers/AttendanceController.php';
                    $controller = new AttendanceController();
                    $controller->showForm();
                }
                break;
            
            default:
                header("HTTP/1.0 404 Not Found");
                exit;
        }
    }
}