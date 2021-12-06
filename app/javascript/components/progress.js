
const initProgress = () => {
  if (document.querySelector(".master-progress")) {
    console.log("ahaha")
    const masterProgess = document.querySelector(".master-progress")
    masterProgess.style.width = `${(masterProgess.dataset.good / masterProgess.dataset.all) * 100}%`
    if (document.querySelector(".not-master-progress")) {
      const notMasterProgress = document.querySelector(".not-master-progress")
      notMasterProgress.style.width = `${(masterProgess.dataset.bad / masterProgess.dataset.all) * 100}%`
    }
  }
};




export { initProgress };
