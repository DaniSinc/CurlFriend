export const displayVideo = () => {
    const blogPost = document.getElementById("blog-post");
    const video = document.getElementById("video");
    const videoInput = document.querySelector(".video_input");
    const blogInput = document.querySelector(".photo_input");
    video.addEventListener('click', (event) => {
        console.log(document.getElementById("content_content_type").value)
        videoInput.classList.remove('hidden');
        blogInput.classList.add('hidden');
    });
    blogPost.addEventListener('click', (event) => {
        blogInput.classList.remove('hidden');
        videoInput.classList.add('hidden');
    });
};
