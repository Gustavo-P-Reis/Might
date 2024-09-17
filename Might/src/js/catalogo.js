document.addEventListener('DOMContentLoaded', function() {
    var dropdown = document.querySelector('.dropdown');
    var toggle = dropdown.querySelector('.dropdown-toggle');
    var menu = dropdown.querySelector('.dropdown-menu');

    toggle.addEventListener('click', function() {
        menu.style.display = menu.style.display === 'block' ? 'none' : 'block';
    });

    document.addEventListener('click', function(event) {
        if (!dropdown.contains(event.target)) {
            menu.style.display = 'none';
        }
    });
});