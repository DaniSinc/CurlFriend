export const displayVideo = () => {
    const blogPost = document.getElementById("blog-post");
    const stepByStep = document.getElementById("step-by-step");
    const video = document.getElementById("video");
    video.addEventListener('click', (event) => {
        const videoInput = document.querySelector(".video_input");
        videoInput.classList.remove('hidden');
    });
    
};
