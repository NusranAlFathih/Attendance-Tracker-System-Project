<?php
class Subject {
    public static function getAll() {
        $pdo = Database::getInstance();
        $stmt = $pdo->prepare("SELECT * FROM subjects");
        $stmt->execute();
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
