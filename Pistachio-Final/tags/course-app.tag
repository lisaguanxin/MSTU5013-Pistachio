<course-app>
    <div class="search">
<<<<<<< HEAD
        <input type="text" name="search" placeholder="Interested..." onkeyup={toggleCourse} ref="search">
        <button type="button" name="button" onclick={toggleCourseList} ref="search">Search</button>
    </div>
    <!-- <div if={courseListState} class="course-list">
        <course-list each={ courseList }></course-list>
    </div> -->
    <div class="courseLabel">
        <button type="button" name="button" onclick={toggleCourseLabel}>
            Tag Course Here
        </button>

        <course-label if={courseLabel}></course-label>
=======
        <!-- ?????????what is the DOM attribute for "onkeyenter" ????????-->
        <input type="text" name="search" placeholder="Interested..." onkeyup={toggleCourse} ref="search">
        <button type="button" name="button" onclick={toggleCourseList} ref="search">Search</button>
    </div>
    <div if={courseListState} class="course-list">
        <course-list each={ courseList }></course-list>
>>>>>>> origin/master
    </div>

    <!-- javascript  -->
    <script>
<<<<<<< HEAD
        var that = this;
        this.courseLabel = false;
        this.toggleCourseLabel = function (event) {
            console.log('hhhhhh');
            this.courseLabel = true;
        };
        this.closeCourseLabel = function (event) {
            that.courseLabel = false;
            that.update();
        };

        this.courseData = [];

        firebase.database().ref('department').on('value', function (snapshot) {
            console.log(snapshot.val());
            // var list = []; snapshot.forEach(function (thing) {     list.push(thing.val()); }); that.courseList = course - list; that.upadate();
        });
=======
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
>>>>>>> origin/master
    </script>

    <style></style>

</course-app>
