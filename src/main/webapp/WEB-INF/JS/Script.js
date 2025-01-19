const track = document.querySelector('.carousel-track');
const vehicles = document.querySelectorAll('.vehicle');
const totalItems = vehicles.length;

let currentIndex = 0; 
const itemWidth = 100 / 3; 
const visibleItems = 1; 

function scrollLeft() {
    if (currentIndex <= 0) { 
      currentIndex = totalItems - visibleItems; 
      track.style.transition = 'none'; 
      track.style.transform = `translateX(-${currentIndex * itemWidth}%)`;
      setTimeout(() => {
        track.style.transition = 'transform 0.5s ease-in-out'; 
        currentIndex--;
        track.style.transform = `translateX(-${currentIndex * itemWidth}%)`;
      });
    } else {
      currentIndex--;
      track.style.transform = `translateX(-${currentIndex * itemWidth}%)`;
    }
  }
  document.getElementById('leftButton').addEventListener('click', scrollLeft);

// Scroll Right
function scrollRight() {
  if (currentIndex >= totalItems - visibleItems) {
    currentIndex = 0; 
    track.style.transition = 'none'; 
    track.style.transform = `translateX(-${currentIndex * itemWidth}%)`;
    setTimeout(() => {
      track.style.transition = 'transform 0.5s ease-in-out'; 
      currentIndex++;
      track.style.transform = `translateX(-${currentIndex * itemWidth}%)`;
    });
  } else {
    currentIndex++;
    track.style.transform = `translateX(-${currentIndex * itemWidth}%)`;
  }
}



// FAQ Question

document.querySelectorAll('.faq-question').forEach(question => {
    question.addEventListener('click', () => {
        const faqItem = question.parentElement;
        const isActive = faqItem.classList.contains('active');

        // Close all open answers
        document.querySelectorAll('.faq-item').forEach(item => {
            item.classList.remove('active');
            item.querySelector('.faq-answer').style.display = 'none';
            item.querySelector('.toggle-icon').textContent = '+';
        });

        // Toggle the clicked FAQ item
        if (!isActive) {
            faqItem.classList.add('active');
            faqItem.querySelector('.faq-answer').style.display = 'block';
            faqItem.querySelector('.toggle-icon').textContent = '-';
        }
    });
});


