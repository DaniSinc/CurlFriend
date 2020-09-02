export const activeFormCheckboxes = () => {
    $(document).ready(function () {
        $(".form-check2").click(function () {
            $(this).toggleClass("active");
        });
    });
}