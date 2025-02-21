document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("filterBtn").addEventListener("click", function () {
        let subject = document.getElementById("subjectFilter").value;
        let startDate = document.getElementById("dateFilterStart").value;
        let endDate = document.getElementById("dateFilterEnd").value;

        let params = new URLSearchParams(window.location.search);
        if (subject) {
            params.set("subject_id", subject);
        } else {
            params.delete("subject_id");
        }
        if (startDate) {
            params.set("start_date", startDate);
        } else {
            params.delete("start_date");
        }
        if (endDate) {
            params.set("end_date", endDate);
        } else {
            params.delete("end_date");
        }

        window.location.search = params.toString();
    });

    let params = new URLSearchParams(window.location.search);
    document.getElementById("subjectFilter").value = params.get("subject_id") || "";
    document.getElementById("dateFilterStart").value = params.get("start_date") || "";
    document.getElementById("dateFilterEnd").value = params.get("end_date") || "";
});

function handleNavigationButtons() {
    const navButtons = document.getElementsByClassName("nav-link");
    const currentPath = window.location.pathname;

    console.log(currentPage);

    for (let i = 0; i < navButtons.length; i++) {
        const button = navButtons[i];
        const buttonId = button.getAttribute("id");
        
        if (buttonId === currentPath.split('/').pop()) {
            button.classList.add("active");
        } else {
            button.classList.remove("active");
        }
    }
}

let currentPage = 1;
let limit = 10;

// Function to update the page number in the URL
function updatePage() {
    const url = new URL(window.location.href);
    url.searchParams.set('page', currentPage);
    history.pushState({}, '', url);
}

// Function to update the limit in the URL
function updateLimit(event) {
    limit = event.currentTarget.value;
    event.currentTarget.value = limit;
    const url = new URL(window.location.href);
    url.searchParams.set('limit', limit);
    history.pushState({}, '', url);
    window.location.reload()
}

function setLimitFromUrl() {
    const url = new URL(window.location.href);
    const limit = url.searchParams.get('limit') || '10';
    const selectElement = document.getElementById('limitSelect');
    selectElement.value = limit;
}

function loadStudents(event){
    const subjectId = event.currentTarget.value;
    const params = new URLSearchParams(window.location.search);
    params.set("subject_id", subjectId);
    window.location.search = params.toString();
}

function setTheSelectedSubject(){
    const url = new URL(window.location.href);
    const subjectId = url.searchParams.get('subject_id') || "";
    const selectElement = document.getElementById('subject');
    selectElement.value = subjectId;
}

function main(){
    handleNavigationButtons();
    setTheSelectedSubject();

    setLimitFromUrl();
}
window.onload = main();