document.addEventListener('DOMContentLoaded', function () {
    const loginTab = document.getElementById('login-tab');
    const signupTab = document.getElementById('signup-tab');
    const loginForm = document.getElementById('login-form');
    const signupForm = document.getElementById('signup-form');

    // Alternar para o formulário de login
    loginTab.addEventListener('click', () => {
        loginTab.classList.add('active-tab');
        signupTab.classList.remove('active-tab');
        loginForm.style.display = 'block';
        signupForm.style.display = 'none';
    });

    // Alternar para o formulário de criação de conta
    signupTab.addEventListener('click', () => {
        signupTab.classList.add('active-tab');
        loginTab.classList.remove('active-tab');
        signupForm.style.display = 'block';
        loginForm.style.display = 'none';
    });
});
