export const activeCheckboxes = () => {
    $(document).ready(function () {
        $(".form-check").click(function () {
            $(this).toggleClass("active");
        });
    });
}