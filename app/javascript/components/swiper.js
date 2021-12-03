import Swiper, { Navigation, FreeMode, Pagination } from 'swiper'

import 'swiper/swiper.scss';
import 'swiper/swiper.min.css';
import 'swiper/modules/navigation/navigation.min.css';
import 'swiper/modules/free-mode/free-mode.min.css';



const initSwiper = () => {
  if (document.querySelector(".mySwiper")) {
    Swiper.use([Navigation]);
    const swiper = new Swiper(".mySwiper", {
      slidesPerView: 3,
      spaceBetween: 30,
      slidesPerGroup: 3,
      loop: true,
      loopFillGroupWithBlank: true,
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
