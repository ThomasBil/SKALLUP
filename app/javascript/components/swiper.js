import Swiper, { Navigation } from 'swiper'

import 'swiper/swiper.scss';
import 'swiper/modules/navigation/navigation.min.css';


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

export { initSwiper };
