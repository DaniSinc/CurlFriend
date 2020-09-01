export const styleCheckboxes = () => {
    $(document).ready(function () {
        $(".category-choice").click(function () {
            $(this).toggleClass("active");
        });
    });
}
