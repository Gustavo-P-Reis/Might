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



const dropdownButton = document.getElementById('dropdownButton');
const dropdownOptions = document.querySelectorAll('.dropdown-option');


dropdownOptions.forEach(option => {
    option.addEventListener('click', function (event) {
        event.preventDefault(); // Evita a navegação ao clicar
        
        dropdownButton.textContent = this.textContent;
    });
});

const pages = document.querySelectorAll('.page-number');
    const prevArrow = document.querySelector('.prev');
    const nextArrow = document.querySelector('.next');
    let currentPage = 0;

    
    function updatePage(newPage) {
        pages[currentPage].classList.remove('active');
        currentPage = newPage;
        pages[currentPage].classList.add('active');

        
        prevArrow.classList.toggle('disabled', currentPage === 0);
        nextArrow.classList.toggle('disabled', currentPage === pages.length - 1);
    }

    
    pages.forEach((page, index) => {
        page.addEventListener('click', () => {
            updatePage(index);
        });
    });

    
    prevArrow.addEventListener('click', () => {
        if (currentPage > 0) {
            updatePage(currentPage - 1);
        }
    });

    nextArrow.addEventListener('click', () => {
        if (currentPage < pages.length - 1) {
            updatePage(currentPage + 1);
        }
    });