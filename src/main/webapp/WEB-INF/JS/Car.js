document.querySelectorAll('.faq-question').forEach(question => {
  question.addEventListener('click', () => {
      const faqItem = question.parentElement;
      const isActive = faqItem.classList.contains('active');

      // Close all open answers
      document.querySelectorAll('.faq-item').forEach(item => {
          item.classList.remove('active');
          item.querySelector('.toggle-icon').textContent = '+';
      });

      // Toggle the clicked FAQ item
      if (!isActive) {
          faqItem.classList.add('active');
          faqItem.querySelector('.toggle-icon').textContent = '-';
      }
  });
});
