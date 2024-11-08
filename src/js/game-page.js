let currentIndex = 0;
const items = document.querySelectorAll(".carousel-item");
const thumbnails = document.querySelectorAll(".carousel-thumbnails img");
const totalItems = items.length;

function showItem(index) {
  
  const previousItem = items[currentIndex];
  const previousVideo = previousItem.querySelector("iframe");
  if (previousVideo) {
    previousVideo.style.display = "none"; 
  }

  
  items.forEach((item) => item.classList.remove("active"));
  items[index].classList.add("active");

  
  const currentVideo = items[index].querySelector("iframe");
  if (currentVideo) {
    currentVideo.style.display = "block"; 
  }

  
  updateThumbnails(index);

  
  currentIndex = index;
}

function updateThumbnails(index) {
  thumbnails.forEach((thumbnail) =>
    thumbnail.classList.remove("active-thumbnail")
  );
  if (thumbnails[index]) {
    thumbnails[index].classList.add("active-thumbnail");
  }
}


showItem(currentIndex);


thumbnails.forEach((thumbnail, index) => {
  thumbnail.addEventListener("click", () => {
    showItem(index);
  });
});
