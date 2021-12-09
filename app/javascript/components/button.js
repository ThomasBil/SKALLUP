const initButton = () => {
  if (document.querySelector(".container-castor")) {
    const castor = document.querySelector(".image-text-castor");
    const button = document.querySelector(".button-finish");
    button.addEventListener('click', (event) => {
      button.style.opacity = "0";
      setTimeout(() => {
        castor.style.display = "block";
        castor.style.opacity = "1";
        button.style.display = "none";
      }, 350);
    });
  };
};

export { initButton };
