const initButton = () => {
  if (document.querySelector(".container-castor")) {
    const castor = document.querySelector("#image_castor");
    const button = document.querySelector(".button-finish");
    button.addEventListener('click', (event) => {
      button.style.visibility = "hidden";
      castor.style.visibility = "visible";
    });
  };
};

export { initButton };
