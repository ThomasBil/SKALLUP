
const initProgress = () => {
  if (document.querySelector(".master-progress")) {
    const progressBarMaster = document.querySelector(".master-progress")
    progressBarMaster.style.width = `${(good_questions / all_questions) * 100}%`
  }
  if (document.querySelector(".not-master-progress")) {
    const progressBarNotMaster = document.querySelector(".not-master-progress")
    progressBarNotMaster.style.width = `${(bad_questions / all_questions) * 100}%`
  }
};




export { initProgress };
