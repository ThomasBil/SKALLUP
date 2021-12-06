
const initProgress = () => {
  if (document.querySelector(".master-progress")) {
    const masterProgess = document.querySelectorAll(".master-progress")
    masterProgess.forEach((element) =>{
      console.log(element)
      element.style.width = `${(element.dataset.good / element.dataset.all) * 100}%`
    });
    if (document.querySelector(".not-master-progress")) {
      const notMasterProgress = document.querySelectorAll(".not-master-progress")
      notMasterProgress.forEach((element) => {
        element.style.width = `${(element.dataset.bad / element.dataset.all) * 100}%`
      });
    }
  }
};




export { initProgress };
