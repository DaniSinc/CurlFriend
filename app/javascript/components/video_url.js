export const displayVideo = () => {
    const videoForm = document.getElementById('content_type');
      if (videoForm.value === "Video") {
        videoForm.style.display = "block";
    } else {
        videoForm.style.display = "none"
    });
}



document.getElementById('content_type').forEach((radio) => {
    radio.addEventListener('change', (event) => {
        radio.classList.add('d-none');
        event.currentTarget.classList.remove('d-none')
    })
}

// 3. define a const and make it equal to a query selector for the input content_type 
// 4. save its value in another variable. you can do this (.value) or (innerText)
// 5. write an event listener on the variable that you defined on step 3. the event listener needs to be on "click"
// 6. now you need to go to your .html.erb file and wrap all the f.input lines in a div, 
//    except for the submit button!. so all inside the div but the submit just after
// 7. give the div a class
// 8. go back to the js file and inside the event listener you need to write 
//    a variable and set it equal to a query selector to the class given on step 7
// 9. to the variable on step 8 you need to call the .addAdjacentHTML to it and 
//    add the videoURL input html line IF the value of the variable on step 4 = video content_type

