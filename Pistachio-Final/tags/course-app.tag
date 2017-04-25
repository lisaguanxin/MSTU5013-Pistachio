<course-app>
    <div class="search">
        <!-- ?????????what is the DOM attribute for "onkeyenter" ????????-->
        <input type="text" name="search" placeholder="Interested..." onkeyup={toggleCourse} ref="search">
        <button type="button" name="button" onclick={toggleCourseList} ref="search">Search</button>
    </div>
    <div if={courseListState} class="course-list">
        <course-list each={ courseList }></course-list>
    </div>

    <!-- javascript  -->
    <script>
        //this.courseList = false;
this.courseListState = false;
        this.toggleCourseList = function (event) {
            console.log("ClickeLd");
            if (event.which === 13) {
              
            }
            this.courseListState = true;

          //  <!-- ?????? how to match the value with tags and trigger the event of toggleCourse ????? -->
        }

        this.courseList = [
            {
                name: "MSTU1111",
                tag: [1, 2, 3]
            }, {
                name: "MSTU0000",
                tag: [1, 5, 6]
            }, {
                name: "MSTU8888",
                tag: [2, 5, 6]
            }
        ];
    </script>

    <style></style>

</course-app>
