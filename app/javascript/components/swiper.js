import Swiper, { Navigation, FreeMode, Pagination, Autoplay } from 'swiper'

// import 'swiper/swiper.scss';
import 'swiper/modules/navigation/navigation.min.css';
// import 'swiper/scss'
// import 'swiper/scss/bundle'
// import 'swiper/swiper-bundle.css'



const initSwiper = () => {
  if (document.querySelector(".mySwiper")) {
    console.log("initSwiper")
    Swiper.use([Navigation]);
    const swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      watchSlidesVisibility: true,
      watchSlidesProgress: true,
      loopFillGroupWithBlank: true,
      observer: true,
      observeParents: true,
      autoplay: {
        delay: 5000,
      },
      navigation: {
        nextEl: ".swiper-button-next",
        prevEl: ".swiper-button-prev",
      },
    });
  }
};

const initSwiperFree = () => {
  if (document.querySelector(".mySwiperFree")) {
    console.log("ahah")
    Swiper.use([Pagination, FreeMode]);
    const swiper2 = new Swiper(".mySwiperFree", {
      slidesPerView: 3,
      spaceBetween: 30,
      freeMode: true,
      loop: true,
      pagination: {
        el: ".swiper-pagination",
        clickable: true,
      },
    });
  }
};

export { initSwiper, initSwiperFree };
