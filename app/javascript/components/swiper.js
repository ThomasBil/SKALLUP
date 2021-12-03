import Swiper, { Navigation } from 'swiper'

// import 'swiper/swiper.min.css';
// import 'swiper/swiper.scss';
// import 'swiper/modules/navigation/navigation.min.css';

import 'swiper/css/bundle'

// swiper core styles
import 'swiper/css'

// modules styles
import 'swiper/css/navigation'
import 'swiper/css/pagination'

const initSwiper = () => {
  if (document.querySelector(".mySwiper")) {
    console.log("initSwiper")
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

export { initSwiper };
