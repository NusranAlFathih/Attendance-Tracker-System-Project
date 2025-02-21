<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="assets/css/index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <title>AttendanceApp</title>
</head>
<body>
    <div class="container">
        <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
        <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto link-body-emphasis text-decoration-none">
            <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"></use></svg>
            <span class="fs-4">Attendance Tracker System</span>
        </a>

        <ul class="nav nav-pills">
            <li class="nav-item"><a id="" href="/" class="nav-link active" aria-current="page">Dashboard</a></li>
            <li class="nav-item"><a id="attendance" href="/attendance" class="nav-link">Attendance</a></li>
        </ul>
        </header>
    </div>

    <main>
    <?php 
        if (isset($content)) {
            echo $content; 
        } else {
            echo "<p>Welcome to the main content area.</p>";
        }
    ?>
    </main>
    <footer>
        <div class="container">
            <h6>@Attendance Tracker System</h6>
        </div>
    </footer>
    <script src="assets/javascript/stript.js" ></script>
</body>

</html>